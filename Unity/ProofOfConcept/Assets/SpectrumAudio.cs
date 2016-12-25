﻿using UnityEngine;
using System.Collections;
using FxLib;

public class SpectrumAudio : MonoBehaviour
{
    public class Field
    {
        int size;
        GameObject[] nodes;
        public Field(int s) { 
            size = s; 
            nodes = new GameObject[size];
        }
        public void Register(int id, GameObject obj)
        {
            if (id < nodes.Length)
            {
                nodes[id] = obj;
            }                
        }
        public int Remap(float x, int scale)
        {
            int result = (int)x + (scale/2);
            return result;
        }
        public void Scroll(float[] spectrum)
        {
            for (int i=0;i<size;i++)
            {
                GameObject node = nodes[i];
                if (node != null)
                {
                    Vector3 loc = node.transform.localPosition;
                    loc.z-=2f;
                    if (loc.z < -10) loc.z = 512.0f;
                    node.transform.localPosition = loc;

                    int spec = 0;
                    if (loc.x < 0) spec = Remap(-loc.x, 255);
                    else spec = Remap(loc.x, 255);

                    node.transform.localScale = new Vector3(800 * spectrum[spec], 800 * spectrum[spec], 800 * spectrum[spec]);
                    node.GetComponent<MeshRenderer>().material.color = 
                        new Color( 
                            1f / (20 * spectrum[spec]),
                            100 * spectrum[spec], 
                            1f / (20 * spectrum[spec]), 1);
                }
            }
        }
    }
    public AudioSource asource;
    public int channel;
    Field field;
    float[] spectrum;
    float[] volume;
    public int numSamples;
    public GameObject enem;
    // Use this for initialization
    private int limit = 255;
    private int iteration = 0;
    void Start()
    {
        if (Application.isEditor)
            limit = 255;
        else limit = 2048;

        field = new Field(limit);
        volume = new float[numSamples];
        spectrum = new float[numSamples];

        for (int i = 0; i < limit; i++)
        {
            float scaleX = 512;
            float scaleY = 255;
            float scaleZ = 1024;
            float rx = Random.value * scaleX - (scaleX / 2);
            float ry = Random.value * scaleY - (scaleY / 2);
            float rz = Random.value * scaleZ - (scaleZ / 2);
            GameObject enemyCloneN = Instantiate(enem, new Vector3(rx, ry, rz), transform.rotation) as GameObject;
            enemyCloneN.name = "n" + i ;
            field.Register(i,enemyCloneN);
        }
        for (int i = 1; i < 255; i++)
        {
            GameObject enemyCloneA = Instantiate(enem, new Vector3(32, 1, i - 127), transform.rotation) as GameObject;
            enemyCloneA.name = "spa" + i;
            GameObject enemyCloneB = Instantiate(enem, new Vector3(-32, 1, i - 127), transform.rotation) as GameObject;
            enemyCloneB.name = "spb" + i;
        }
    }

    char commandKey = ' ';
    char lastKey = ' ';

    void ProcessKey(char key)
    {
        Debug.Log("KeyPress " + key);
        switch (key)
        {
            case (char)27:
                commandKey = key; lastKey = ' ';
                Application.Quit();
                break;
            case '`':
                break;
            case 't': 
            case 'r': 
            case 'x': 
            case 'z': 
            case 'm': 
            case 'n': 
                commandKey = key; lastKey = ' ';
                break;
            case '0':
            case '1':
            case '2':
            case '3':
            case '4':
            case '5':
            case '6':
            case '7':
            case '8':
            case '9':
                if (lastKey == ' ') lastKey = key;
                else
                {
                    int value = (lastKey - '0') * 10 + (key - '0');
                    Debug.Log("Command " + commandKey + ", " + value + " - " + lastKey + "/"+key);
                    switch (commandKey)
                    {
                        case 't':
                            {
                                FxSet fxs = Fx.mixer.activeFx();
                                Debug.Log("Command result " + commandKey + ", " + value + " - " + lastKey + "/" + key+ " = " + fxs.fxChannels[value]._active);
                                if (fxs.fxChannels[value]._active == 0)
                                    fxs.fxChannels[value]._active = 1;
                                else
                                    fxs.fxChannels[value]._active = 0;
                                break;
                            }
                    }
                    commandKey = key; lastKey = ' ';
                }
                break;
        }
    }

    // Update is called once per frame
    void Update()
    {
        asource.GetOutputData(volume, channel);
        asource.GetSpectrumData(spectrum, channel, FFTWindow.Rectangular);

        if (Fx.mixer.activeFx().fxChannels[1]._active == 1)
            field.Scroll(spectrum);

        if (Fx.mixer.activeFx().fxChannels[2]._active == 1)
        {
            for (int i = 0; i < 255; i++)
            {
                string sp = "spa" + ((255 - i) + 1);
                GameObject sp1 = GameObject.Find(sp);
                if (sp1 != null)
                {
                    float height = 200 * spectrum[i];
                    sp1.transform.localScale = new Vector3(1, height * 2, 1);
                    sp1.transform.position = new Vector3(sp1.transform.position.x, height, sp1.transform.position.z);
                    sp1.GetComponent<MeshRenderer>().material.color = new Color(
                                100 * spectrum[i] / 2,
                                100 * spectrum[i] / 2,
                                100 * spectrum[i], 1);
                }
            }

            for (int i = 0; i < 255; i++)
            {
                string sp = "spb" + ((255 - i) + 1);
                GameObject sp1 = GameObject.Find(sp);
                if (sp1 != null)
                {
                    float height = 200 * spectrum[i];
                    sp1.transform.localScale = new Vector3(1, height * 2, 1);
                    sp1.transform.position = new Vector3(sp1.transform.position.x, height, sp1.transform.position.z);
                    sp1.GetComponent<MeshRenderer>().material.color = new Color(
                                100 * spectrum[i] / 2,
                                100 * spectrum[i] / 2,
                                100 * spectrum[i], 1);
                }
            }
        }

        if (Input.GetKeyUp("escape")) ProcessKey((char)27);
        if (Input.GetKeyUp("t")) ProcessKey('t');
        if (Input.GetKeyUp("r")) ProcessKey('r');
        if (Input.GetKeyUp("x")) ProcessKey('x');
        if (Input.GetKeyUp("z")) ProcessKey('z');
        if (Input.GetKeyUp("m")) ProcessKey('m');
        if (Input.GetKeyUp("n")) ProcessKey('n');
        if (Input.GetKeyUp("0")) ProcessKey('0');
        if (Input.GetKeyUp("1")) ProcessKey('1');
        if (Input.GetKeyUp("2")) ProcessKey('2');
        if (Input.GetKeyUp("3")) ProcessKey('3');
        if (Input.GetKeyUp("4")) ProcessKey('4');
        if (Input.GetKeyUp("5")) ProcessKey('5');
        if (Input.GetKeyUp("6")) ProcessKey('6');
        if (Input.GetKeyUp("7")) ProcessKey('7');
        if (Input.GetKeyUp("8")) ProcessKey('8');
        if (Input.GetKeyUp("9")) ProcessKey('9');

        iteration++;
    }
}
