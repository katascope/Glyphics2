using UnityEngine;
using System.Collections;

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

    // Update is called once per frame
    void Update()
    {
        asource.GetOutputData(volume, channel);
        asource.GetSpectrumData(spectrum, channel, FFTWindow.Rectangular);

        for (int i = 0; i < 255; i++)
        {
            string sp = "spa" + ((255-i) + 1);
            GameObject sp1 = GameObject.Find(sp);
            if (sp1 != null)
            {
                float height = 200 * spectrum[i] ;
                sp1.transform.localScale = new Vector3(1, height*2,1);
                sp1.transform.position = new Vector3(sp1.transform.position.x, height, sp1.transform.position.z);
                sp1.GetComponent<MeshRenderer>().material.color = new Color(
                            100 * spectrum[i] / 2,
                            100 * spectrum[i] / 2,
                            100 * spectrum[i], 1);
            }
        }

        for (int i = 0; i < 255; i++)
        {
            string sp = "spb" + ((255-i) + 1);
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

        field.Scroll(spectrum);
    }
}
