// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.heyzap.http;

import android.util.Log;
import java.io.BufferedOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
import java.util.zip.GZIPOutputStream;
import org.apache.http.Header;
import org.apache.http.HttpEntity;
import org.apache.http.message.BasicHeader;

// Referenced classes of package com.heyzap.http:
//            Base64OutputStream

class JsonStreamerEntity
    implements HttpEntity
{

    private static final String APPLICATION_OCTET_STREAM = "application/octet-stream";
    private static final int BUFFER_SIZE = 2048;
    private static final StringBuilder BUILDER = new StringBuilder(2764);
    private static final UnsupportedOperationException ERR_UNSUPPORTED = new UnsupportedOperationException("Unsupported operation in this implementation.");
    private static final Header HEADER_GZIP_ENCODING = new BasicHeader("Content-Encoding", "gzip");
    private static final Header HEADER_JSON_CONTENT = new BasicHeader("Content-Type", "application/json");
    private static final byte JSON_FALSE[] = "false".getBytes();
    private static final byte JSON_NULL[] = "null".getBytes();
    private static final byte JSON_TRUE[] = "true".getBytes();
    private static final String LOG_TAG = "JsonStreamerEntity";
    private static final byte STREAM_CONTENTS[] = escape("contents");
    private static final byte STREAM_ELAPSED[] = escape("_elapsed");
    private static final byte STREAM_NAME[] = escape("name");
    private static final byte STREAM_TYPE[] = escape("type");
    private final Header contentEncoding;
    private final Map kvParams = new HashMap();
    private final Map streamParams = new HashMap();

    public JsonStreamerEntity(boolean flag)
    {
        Header header;
        if (flag)
        {
            header = HEADER_GZIP_ENCODING;
        } else
        {
            header = null;
        }
        contentEncoding = header;
    }

    static byte[] escape(String s)
    {
        if (s == null)
        {
            return JSON_NULL;
        }
        BUILDER.append('"');
        int k = s.length();
        int i = -1;
label0:
        do
        {
            char c;
            int j;
label1:
            {
                j = i + 1;
                if (j >= k)
                {
                    break label0;
                }
                c = s.charAt(j);
                String s1;
                switch (c)
                {
                default:
                    if (c >= 0 && c <= '\037' || c >= '\177' && c <= '\237' || c >= '\u2000' && c <= '\u20FF')
                    {
                        s1 = Integer.toHexString(c);
                        BUILDER.append("\\u");
                        int l = s1.length();
                        for (i = 0; i < 4 - l; i++)
                        {
                            BUILDER.append('0');
                        }

                        break;
                    }
                    break label1;

                case 34: // '"'
                    BUILDER.append("\\\"");
                    i = j;
                    continue;

                case 92: // '\\'
                    BUILDER.append("\\\\");
                    i = j;
                    continue;

                case 8: // '\b'
                    BUILDER.append("\\b");
                    i = j;
                    continue;

                case 12: // '\f'
                    BUILDER.append("\\f");
                    i = j;
                    continue;

                case 10: // '\n'
                    BUILDER.append("\\n");
                    i = j;
                    continue;

                case 13: // '\r'
                    BUILDER.append("\\r");
                    i = j;
                    continue;

                case 9: // '\t'
                    BUILDER.append("\\t");
                    i = j;
                    continue;
                }
                BUILDER.append(s1.toUpperCase(Locale.US));
                i = j;
                continue;
            }
            BUILDER.append(c);
            i = j;
        } while (true);
        BUILDER.append('"');
        s = BUILDER.toString().getBytes();
        BUILDER.setLength(0);
        return s;
        s;
        BUILDER.setLength(0);
        throw s;
    }

    public void addPart(String s, InputStream inputstream, String s1, String s2)
    {
        if (s2 == null)
        {
            s2 = "application/octet-stream";
        }
        streamParams.put(s, new RequestParams.StreamWrapper(inputstream, s1, s2));
    }

    public void addPart(String s, Object obj)
    {
        kvParams.put(s, obj);
    }

    public void consumeContent()
        throws IOException, UnsupportedOperationException
    {
    }

    public InputStream getContent()
        throws IOException, UnsupportedOperationException
    {
        throw ERR_UNSUPPORTED;
    }

    public Header getContentEncoding()
    {
        return contentEncoding;
    }

    public long getContentLength()
    {
        return -1L;
    }

    public Header getContentType()
    {
        return HEADER_JSON_CONTENT;
    }

    public boolean isChunked()
    {
        return false;
    }

    public boolean isRepeatable()
    {
        return false;
    }

    public boolean isStreaming()
    {
        return false;
    }

    public void writeTo(OutputStream outputstream)
        throws IOException
    {
        if (outputstream == null)
        {
            throw new IllegalStateException("Output stream cannot be null.");
        }
        long l = System.currentTimeMillis();
        Iterator iterator;
        if (contentEncoding != null)
        {
            outputstream = new GZIPOutputStream(new BufferedOutputStream(outputstream), 2048);
        } else
        {
            outputstream = new BufferedOutputStream(outputstream);
        }
        outputstream.write(123);
        iterator = kvParams.keySet().iterator();
        while (iterator.hasNext()) 
        {
            String s = (String)iterator.next();
            outputstream.write(escape(s));
            outputstream.write(58);
            byte abyte0[] = ((byte []) (kvParams.get(s)));
            if (abyte0 instanceof Boolean)
            {
                if (((Boolean)abyte0).booleanValue())
                {
                    abyte0 = JSON_TRUE;
                } else
                {
                    abyte0 = JSON_FALSE;
                }
                outputstream.write(abyte0);
            } else
            if (abyte0 instanceof Long)
            {
                outputstream.write((new StringBuilder()).append(((Number)abyte0).longValue()).append("").toString().getBytes());
            } else
            if (abyte0 instanceof Double)
            {
                outputstream.write((new StringBuilder()).append(((Number)abyte0).doubleValue()).append("").toString().getBytes());
            } else
            if (abyte0 instanceof Float)
            {
                outputstream.write((new StringBuilder()).append(((Number)abyte0).floatValue()).append("").toString().getBytes());
            } else
            if (abyte0 instanceof Integer)
            {
                outputstream.write((new StringBuilder()).append(((Number)abyte0).intValue()).append("").toString().getBytes());
            } else
            {
                outputstream.write(abyte0.toString().getBytes());
            }
            outputstream.write(44);
        }
        byte abyte1[] = new byte[2048];
        for (Iterator iterator1 = streamParams.keySet().iterator(); iterator1.hasNext(); outputstream.write(44))
        {
            Object obj = (String)iterator1.next();
            RequestParams.StreamWrapper streamwrapper = (RequestParams.StreamWrapper)streamParams.get(obj);
            outputstream.write(escape(((String) (obj))));
            outputstream.write(58);
            outputstream.write(123);
            outputstream.write(STREAM_NAME);
            outputstream.write(58);
            outputstream.write(escape(streamwrapper.name));
            outputstream.write(44);
            outputstream.write(STREAM_TYPE);
            outputstream.write(58);
            outputstream.write(escape(streamwrapper.contentType));
            outputstream.write(44);
            outputstream.write(STREAM_CONTENTS);
            outputstream.write(58);
            outputstream.write(34);
            obj = new Base64OutputStream(outputstream, 18);
            do
            {
                int i = streamwrapper.inputStream.read(abyte1);
                if (i == -1)
                {
                    break;
                }
                ((Base64OutputStream) (obj)).write(abyte1, 0, i);
            } while (true);
            ((Base64OutputStream) (obj)).close();
            outputstream.write(34);
            outputstream.write(125);
        }

        outputstream.write(STREAM_ELAPSED);
        outputstream.write(58);
        l = System.currentTimeMillis() - l;
        outputstream.write((new StringBuilder()).append(l).append("}").toString().getBytes());
        Log.i("JsonStreamerEntity", (new StringBuilder()).append("Uploaded JSON in ").append(Math.floor(l / 1000L)).append(" seconds").toString());
        outputstream.flush();
        outputstream.close();
    }

}
