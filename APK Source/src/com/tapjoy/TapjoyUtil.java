// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.tapjoy;

import android.content.Context;
import android.content.res.AssetManager;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.net.Uri;
import android.view.View;
import android.webkit.WebSettings;
import android.webkit.WebView;
import java.io.BufferedInputStream;
import java.io.ByteArrayInputStream;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.UnsupportedEncodingException;
import java.net.SocketTimeoutException;
import java.net.URL;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import java.util.jar.JarFile;
import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;
import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;

// Referenced classes of package com.tapjoy:
//            TapjoyLog

public class TapjoyUtil
{

    private static final String TAG = "TapjoyUtil";
    private static HashMap _resources = new HashMap();
    private static String mraidJs = null;

    public TapjoyUtil()
    {
    }

    public static String SHA1(String s)
        throws NoSuchAlgorithmException, UnsupportedEncodingException
    {
        return hashAlgorithm("SHA-1", s);
    }

    public static String SHA256(String s)
        throws NoSuchAlgorithmException, UnsupportedEncodingException
    {
        return hashAlgorithm("SHA-256", s);
    }

    public static Document buildDocument(String s)
    {
        try
        {
            DocumentBuilderFactory documentbuilderfactory = DocumentBuilderFactory.newInstance();
            s = new ByteArrayInputStream(s.getBytes("UTF-8"));
            s = documentbuilderfactory.newDocumentBuilder().parse(s);
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            TapjoyLog.e("TapjoyUtil", (new StringBuilder()).append("buildDocument exception: ").append(s.toString()).toString());
            return null;
        }
        return s;
    }

    private static String convertToHex(byte abyte0[])
    {
        StringBuffer stringbuffer;
        int i;
        stringbuffer = new StringBuffer();
        i = 0;
_L2:
        int j;
        int k;
        if (i >= abyte0.length)
        {
            break; /* Loop/switch isn't completed */
        }
        k = abyte0[i] >>> 4 & 0xf;
        j = 0;
_L3:
        if (k >= 0 && k <= 9)
        {
            stringbuffer.append((char)(k + 48));
        } else
        {
            stringbuffer.append((char)((k - 10) + 97));
        }
        k = abyte0[i] & 0xf;
        if (j < 1)
        {
            break MISSING_BLOCK_LABEL_93;
        }
        i++;
        if (true) goto _L2; else goto _L1
_L1:
        return stringbuffer.toString();
        j++;
          goto _L3
    }

    public static String convertURLParams(Map map, boolean flag)
    {
        String s = "";
        Iterator iterator = map.entrySet().iterator();
        map = s;
        while (iterator.hasNext()) 
        {
            java.util.Map.Entry entry = (java.util.Map.Entry)iterator.next();
            Object obj = map;
            if (map.length() > 0)
            {
                obj = (new StringBuilder()).append(map).append("&").toString();
            }
            if (flag)
            {
                map = (new StringBuilder()).append(((String) (obj))).append(Uri.encode((String)entry.getKey())).append("=").append(Uri.encode((String)entry.getValue())).toString();
            } else
            {
                map = (new StringBuilder()).append(((String) (obj))).append((String)entry.getKey()).append("=").append((String)entry.getValue()).toString();
            }
        }
        return map;
    }

    public static Map convertURLParams(String s, boolean flag)
    {
        HashMap hashmap = new HashMap();
        int i = 0;
        boolean flag2 = false;
        String s1 = "";
        String s3 = "";
        while (i < s.length() && i != -1) 
        {
            char c = s.charAt(i);
            String s2;
            String s4;
            boolean flag1;
            if (!flag2)
            {
                if (c == '=')
                {
                    flag1 = true;
                    if (flag)
                    {
                        s1 = Uri.decode(s1);
                    }
                    s2 = "";
                    s4 = s1;
                } else
                {
                    s2 = (new StringBuilder()).append(s1).append(c).toString();
                    s4 = s3;
                    flag1 = flag2;
                }
            } else
            {
                s4 = s3;
                flag1 = flag2;
                s2 = s1;
                if (flag2)
                {
                    if (c == '&')
                    {
                        flag1 = false;
                        if (flag)
                        {
                            s1 = Uri.decode(s1);
                        }
                        s2 = "";
                        hashmap.put(s3, s1);
                        s4 = s3;
                    } else
                    {
                        s2 = (new StringBuilder()).append(s1).append(c).toString();
                        s4 = s3;
                        flag1 = flag2;
                    }
                }
            }
            i++;
            s3 = s4;
            flag2 = flag1;
            s1 = s2;
        }
        if (flag2 && s1.length() > 0)
        {
            if (flag)
            {
                s = Uri.decode(s1);
            } else
            {
                s = s1;
            }
            hashmap.put(s3, s);
        }
        return hashmap;
    }

    public static String copyTextFromJarIntoString(String s)
    {
        return copyTextFromJarIntoString(s, null);
    }

    public static String copyTextFromJarIntoString(String s, Context context)
    {
        Object obj;
        byte abyte0[];
        StringBuffer stringbuffer;
        abyte0 = new byte[1024];
        stringbuffer = new StringBuffer();
        obj = com/tapjoy/TapjoyUtil.getClassLoader().getResource(s);
        if (context == null || obj != null) goto _L2; else goto _L1
_L1:
        s = context.getAssets().open(s);
_L5:
        context = s;
        int i = s.read(abyte0);
        if (i > 0) goto _L4; else goto _L3
_L3:
        context = s;
        obj = stringbuffer.toString();
        Exception exception;
        if (s != null)
        {
            try
            {
                s.close();
            }
            // Misplaced declaration of an exception variable
            catch (String s) { }
        }
        return ((String) (obj));
_L2:
        obj = ((URL) (obj)).getFile();
        context = ((Context) (obj));
        if (((String) (obj)).startsWith("jar:"))
        {
            context = ((String) (obj)).substring(4);
        }
        obj = context;
        if (context.startsWith("file:"))
        {
            obj = context.substring(5);
        }
        i = ((String) (obj)).indexOf("!");
        context = ((Context) (obj));
        if (i <= 0)
        {
            break MISSING_BLOCK_LABEL_136;
        }
        context = ((String) (obj)).substring(0, i);
        context = new JarFile(context);
        s = context.getInputStream(context.getJarEntry(s));
          goto _L5
_L4:
        context = s;
        stringbuffer.append((new String(abyte0)).substring(0, i));
          goto _L5
        exception;
_L9:
        context = s;
        TapjoyLog.d("TapjoyUtil", (new StringBuilder()).append("file exception: ").append(exception.toString()).toString());
        context = s;
        exception.printStackTrace();
        if (s != null)
        {
            try
            {
                s.close();
            }
            // Misplaced declaration of an exception variable
            catch (String s) { }
        }
        return null;
        s;
        context = null;
_L7:
        if (context != null)
        {
            try
            {
                context.close();
            }
            // Misplaced declaration of an exception variable
            catch (Context context) { }
        }
        throw s;
        s;
        if (true) goto _L7; else goto _L6
_L6:
        exception;
        s = null;
        if (true) goto _L9; else goto _L8
_L8:
    }

    public static Bitmap createBitmapFromView(View view)
    {
        Canvas canvas = null;
        Bitmap bitmap = null;
        Bitmap bitmap1 = bitmap;
        if (view == null)
        {
            break MISSING_BLOCK_LABEL_97;
        }
        bitmap1 = bitmap;
        if (view.getLayoutParams().width <= 0)
        {
            break MISSING_BLOCK_LABEL_97;
        }
        bitmap1 = bitmap;
        if (view.getLayoutParams().height <= 0)
        {
            break MISSING_BLOCK_LABEL_97;
        }
        bitmap = canvas;
        try
        {
            bitmap1 = Bitmap.createBitmap(view.getLayoutParams().width, view.getLayoutParams().height, android.graphics.Bitmap.Config.ARGB_8888);
        }
        // Misplaced declaration of an exception variable
        catch (View view)
        {
            TapjoyLog.i("TapjoyUtil", (new StringBuilder()).append("error creating bitmap: ").append(view.toString()).toString());
            return bitmap;
        }
        bitmap = bitmap1;
        canvas = new Canvas(bitmap1);
        bitmap = bitmap1;
        view.layout(view.getLeft(), view.getTop(), view.getRight(), view.getBottom());
        bitmap = bitmap1;
        view.draw(canvas);
        return bitmap1;
    }

    public static void deleteFileOrDirectory(File file)
    {
        if (file.isDirectory())
        {
            File afile[] = file.listFiles();
            int j = afile.length;
            for (int i = 0; i < j; i++)
            {
                deleteFileOrDirectory(afile[i]);
            }

        }
        TapjoyLog.i("TapjoyUtil", "****************************************");
        TapjoyLog.i("TapjoyUtil", (new StringBuilder()).append("deleteFileOrDirectory: ").append(file.getAbsolutePath()).toString());
        TapjoyLog.i("TapjoyUtil", "****************************************");
        file.delete();
    }

    public static String determineMimeType(String s)
    {
        String s2 = "";
        String s1 = s;
        if (s.endsWith("."))
        {
            s1 = s.substring(0, s.length() - 1);
        }
        s = s2;
        if (s1.lastIndexOf('.') != -1)
        {
            s = s1.substring(s1.lastIndexOf('.') + 1);
        }
        if (s.equals("css"))
        {
            return "text/css";
        }
        if (s.equals("js"))
        {
            return "text/javascript";
        }
        if (s.equals("html"))
        {
            return "text/html";
        } else
        {
            return "application/octet-stream";
        }
    }

    public static long fileOrDirectorySize(File file)
    {
        long l = 0L;
        file = file.listFiles();
        int j = file.length;
        int i = 0;
        while (i < j) 
        {
            File file1 = file[i];
            if (file1.isFile())
            {
                l += file1.length();
            } else
            {
                l += fileOrDirectorySize(file1);
            }
            i++;
        }
        return l;
    }

    public static String getNodeTrimValue(NodeList nodelist)
    {
        Element element = (Element)nodelist.item(0);
        nodelist = "";
        if (element != null)
        {
            NodeList nodelist1 = element.getChildNodes();
            int j = nodelist1.getLength();
            for (int i = 0; i < j;)
            {
                Node node = nodelist1.item(i);
                Object obj = nodelist;
                if (node != null)
                {
                    obj = (new StringBuilder()).append(nodelist).append(node.getNodeValue()).toString();
                }
                i++;
                nodelist = ((NodeList) (obj));
            }

            if (nodelist != null && !nodelist.equals(""))
            {
                return nodelist.trim();
            } else
            {
                return null;
            }
        } else
        {
            return null;
        }
    }

    public static String getRedirectDomain(String s)
    {
        String s1 = "";
        if (s != null)
        {
            s1 = s.substring(s.indexOf("//") + "//".length(), s.lastIndexOf("/"));
        }
        return s1;
    }

    public static Object getResource(String s)
    {
        return _resources.get(s);
    }

    private static String hashAlgorithm(String s, String s1)
        throws NoSuchAlgorithmException, UnsupportedEncodingException
    {
        byte abyte0[] = new byte[40];
        s = MessageDigest.getInstance(s);
        s.update(s1.getBytes("iso-8859-1"), 0, s1.length());
        return convertToHex(s.digest());
    }

    public static void safePut(Map map, String s, String s1, boolean flag)
    {
label0:
        {
            if (s != null && s.length() > 0 && s1 != null && s1.length() > 0)
            {
                if (!flag)
                {
                    break label0;
                }
                map.put(Uri.encode(s), Uri.encode(s1));
            }
            return;
        }
        map.put(s, s1);
    }

    public static View scaleDisplayAd(View view, int i)
    {
        int j = view.getLayoutParams().width;
        int k = view.getLayoutParams().height;
        TapjoyLog.i("TapjoyUtil", (new StringBuilder()).append("wxh: ").append(j).append("x").append(k).toString());
        if (j > i)
        {
            int l = Double.valueOf(Double.valueOf(Double.valueOf(i).doubleValue() / Double.valueOf(j).doubleValue()).doubleValue() * 100D).intValue();
            ((WebView)(WebView)view).getSettings().setSupportZoom(true);
            ((WebView)(WebView)view).setPadding(0, 0, 0, 0);
            ((WebView)(WebView)view).setVerticalScrollBarEnabled(false);
            ((WebView)(WebView)view).setHorizontalScrollBarEnabled(false);
            ((WebView)(WebView)view).setInitialScale(l);
            view.setLayoutParams(new android.view.ViewGroup.LayoutParams(i, (i * k) / j));
        }
        return view;
    }

    public static void setResource(String s, Object obj)
    {
        _resources.put(s, obj);
    }

    public static void writeFileToDevice(BufferedInputStream bufferedinputstream, OutputStream outputstream)
        throws IOException, SocketTimeoutException
    {
        byte abyte0[] = new byte[1024];
        do
        {
            int i = bufferedinputstream.read(abyte0);
            if (i != -1)
            {
                outputstream.write(abyte0, 0, i);
            } else
            {
                return;
            }
        } while (true);
    }

}
