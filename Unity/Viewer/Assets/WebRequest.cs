using UnityEngine;
using System;
using System.IO;
using System.Net;
using System.Text;
using System.Collections;

public class WebRequest : MonoBehaviour {
/*    static string HttpGet(string url)
    {
        HttpWebRequest req = (HttpWebRequest)System.Net.WebRequest.Create(url)
                             as HttpWebRequest;
        string result = null;
        using (HttpWebResponse resp = req.GetResponse()
                                      as HttpWebResponse)
        {
            StreamReader reader =
                new StreamReader(resp.GetResponseStream());
            result = reader.ReadToEnd();
        }
        return result;
    }
    // Use this for initialization
    void Start () {
    }
	
	// Update is called once per frame
	void Update () {
        if (Input.GetKey("n"))
        {
            string response = HttpGet("http://localhost:3838/api/srects?Ascent");
            //Debug.Log(response);
            var textArea = new Rect(0, 0, Screen.width, Screen.height);
//            GUI.Label(textArea, response);
        }
    }*/
}
