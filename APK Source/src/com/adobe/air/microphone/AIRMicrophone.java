// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.adobe.air.microphone;


// Referenced classes of package com.adobe.air.microphone:
//            AIRMicrophoneRecorder

public class AIRMicrophone
{

    private AIRMicrophoneRecorder m_airRecorder;
    private int m_audioFormat;
    private int m_audioSource;
    private int m_bufferSize;
    private int m_channelConfiguration;
    private int m_sampleRate;
    private Thread m_thread;

    public AIRMicrophone()
    {
        m_audioSource = 0;
        m_sampleRate = 0;
        m_channelConfiguration = 0;
        m_audioFormat = 0;
        m_bufferSize = 0;
    }

    public void Close()
    {
        m_airRecorder.setRecording(false);
    }

    public byte[] GetNextBuffer()
    {
        return m_airRecorder.getBuffer();
    }

    public boolean Open(int i, int j, int k, int l)
    {
        m_audioSource = 1;
        m_sampleRate = i;
        if (k == 8)
        {
            m_audioFormat = 3;
        } else
        if (k == 16)
        {
            m_audioFormat = 2;
        } else
        {
            return false;
        }
        if (j == 1)
        {
            m_channelConfiguration = 16;
        } else
        if (j == 2)
        {
            m_channelConfiguration = 12;
        } else
        {
            return false;
        }
        m_bufferSize = l;
        m_airRecorder = new AIRMicrophoneRecorder(m_audioSource, m_sampleRate, m_channelConfiguration, m_audioFormat, m_bufferSize);
        m_thread = new Thread(m_airRecorder);
        m_thread.start();
        if (m_airRecorder.Open().booleanValue())
        {
            m_airRecorder.setRecording(true);
            return true;
        } else
        {
            return false;
        }
    }
}
