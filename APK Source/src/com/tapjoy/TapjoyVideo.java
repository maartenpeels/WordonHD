// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.tapjoy;

import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.os.Environment;
import java.io.BufferedInputStream;
import java.io.ByteArrayInputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.SocketTimeoutException;
import java.net.URL;
import java.net.URLConnection;
import java.util.Enumeration;
import java.util.Hashtable;
import java.util.Iterator;
import java.util.Set;
import java.util.Vector;
import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;
import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.w3c.dom.NamedNodeMap;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;

// Referenced classes of package com.tapjoy:
//            TapjoyUtil, TapjoyConnectCore, TapjoyLog, OldTapjoyVideoData, 
//            TapjoyURLConnection, TapjoyVideoNotifier, TapjoyVideoView, TapjoyHttpURLResponse

public class TapjoyVideo
{

    private static final String TAG = "TapjoyVideo";
    private static TapjoyVideo tapjoyVideo = null;
    private static TapjoyVideoNotifier tapjoyVideoNotifier;
    private static Bitmap watermarkImage;
    private static final String watermarkURL = "https://s3.amazonaws.com/tapjoy/videos/assets/watermark.png";
    private boolean cache3g;
    private boolean cacheAuto;
    private boolean cacheWifi;
    private Hashtable cachedVideos;
    Context context;
    private String imageCacheDir;
    private boolean initialized;
    private Hashtable uncachedVideos;
    private String videoCacheDir;
    private int videoCacheLimit;
    private Vector videoQueue;
    private OldTapjoyVideoData videoToPlay;

    public TapjoyVideo(Context context1)
    {
        videoCacheDir = null;
        imageCacheDir = null;
        videoCacheLimit = 5;
        cacheAuto = false;
        initialized = false;
        cacheWifi = false;
        cache3g = false;
        context = context1;
        tapjoyVideo = this;
        if (Environment.getExternalStorageDirectory() != null)
        {
            videoCacheDir = (new StringBuilder()).append(Environment.getExternalStorageDirectory().toString()).append("/tjcache/data/").toString();
            imageCacheDir = (new StringBuilder()).append(Environment.getExternalStorageDirectory().toString()).append("/tjcache/tmp/").toString();
            TapjoyUtil.deleteFileOrDirectory(new File((new StringBuilder()).append(Environment.getExternalStorageDirectory().toString()).append("/tapjoy/").toString()));
            TapjoyUtil.deleteFileOrDirectory(new File(imageCacheDir));
        }
        videoQueue = new Vector();
        uncachedVideos = new Hashtable();
        cachedVideos = new Hashtable();
        if (TapjoyConnectCore.getConnectFlagValue("video_cache_count") != null && TapjoyConnectCore.getConnectFlagValue("video_cache_count").length() > 0)
        {
            try
            {
                TapjoyLog.i("TapjoyVideo", (new StringBuilder()).append("Setting video cache count to: ").append(TapjoyConnectCore.getConnectFlagValue("video_cache_count")).toString());
                setVideoCacheCount(Integer.parseInt(TapjoyConnectCore.getConnectFlagValue("video_cache_count")));
            }
            // Misplaced declaration of an exception variable
            catch (Context context1)
            {
                TapjoyLog.e("TapjoyVideo", (new StringBuilder()).append("Error, invalid value for video_cache_count: ").append(TapjoyConnectCore.getConnectFlagValue("video_cache_count")).toString());
            }
        }
        init();
    }

    private void cacheVideoFromURL(String s)
    {
        Object obj1;
        Object obj3;
        Object obj4;
        Object obj5;
        Object obj6;
        Object obj7;
        boolean flag;
        boolean flag1;
        boolean flag2;
        long l;
        TapjoyLog.i("TapjoyVideo", (new StringBuilder()).append("download and cache video from: ").append(s).toString());
        l = System.currentTimeMillis();
        flag2 = false;
        flag1 = false;
        flag = false;
        obj7 = null;
        obj1 = null;
        obj3 = null;
        obj4 = null;
        obj6 = null;
        obj5 = null;
        Object obj;
        obj = (new URL(s)).openConnection();
        ((URLConnection) (obj)).setConnectTimeout(15000);
        ((URLConnection) (obj)).setReadTimeout(30000);
        ((URLConnection) (obj)).connect();
        obj = new BufferedInputStream(((URLConnection) (obj)).getInputStream());
        obj1 = new File(videoCacheDir);
        String s1 = s.substring(0, s.lastIndexOf("/") + 1);
        s = s.substring(s.lastIndexOf("/") + 1);
        s = s.substring(0, s.indexOf('.'));
        TapjoyLog.i("TapjoyVideo", (new StringBuilder()).append("fileDir: ").append(obj1).toString());
        TapjoyLog.i("TapjoyVideo", (new StringBuilder()).append("path: ").append(s1).toString());
        TapjoyLog.i("TapjoyVideo", (new StringBuilder()).append("file name: ").append(s).toString());
        if (((File) (obj1)).mkdirs())
        {
            TapjoyLog.i("TapjoyVideo", (new StringBuilder()).append("created directory at: ").append(((File) (obj1)).getPath()).toString());
        }
        s = new File(videoCacheDir, s);
        obj1 = new FileOutputStream(s);
        byte abyte0[];
        TapjoyLog.i("TapjoyVideo", (new StringBuilder()).append("downloading video file to: ").append(s.toString()).toString());
        abyte0 = new byte[1024];
_L3:
        int i = ((BufferedInputStream) (obj)).read(abyte0);
        if (i == -1) goto _L2; else goto _L1
_L1:
        ((OutputStream) (obj1)).write(abyte0, 0, i);
          goto _L3
        obj3;
        Object obj2;
        obj2 = obj1;
        obj1 = s;
        s = ((String) (obj));
        obj = obj3;
_L7:
        TapjoyLog.e("TapjoyVideo", (new StringBuilder()).append("Network timeout: ").append(((SocketTimeoutException) (obj)).toString()).toString());
        flag1 = true;
        flag = true;
_L4:
        if (flag1)
        {
            TapjoyLog.i("TapjoyVideo", "Network timeout");
            long l1;
            try
            {
                s.close();
                ((OutputStream) (obj2)).close();
            }
            // Misplaced declaration of an exception variable
            catch (String s) { }
        }
        if (!flag1 && !flag)
        {
            try
            {
                s = (String)videoQueue.elementAt(0);
                obj = (OldTapjoyVideoData)uncachedVideos.get(s);
                ((OldTapjoyVideoData) (obj)).setLocalFilePath(((File) (obj1)).getAbsolutePath());
                cachedVideos.put(s, obj);
                uncachedVideos.remove(s);
                videoQueue.removeElementAt(0);
                setVideoIDs();
                TapjoyLog.i("TapjoyVideo", (new StringBuilder()).append("video cached in: ").append(System.currentTimeMillis() - l).append("ms").toString());
                return;
            }
            // Misplaced declaration of an exception variable
            catch (String s)
            {
                TapjoyLog.e("TapjoyVideo", (new StringBuilder()).append("error caching video ???: ").append(s.toString()).toString());
            }
            return;
        } else
        {
            videoNotifierError(2);
            return;
        }
_L2:
        ((OutputStream) (obj1)).close();
        ((BufferedInputStream) (obj)).close();
        TapjoyLog.i("TapjoyVideo", (new StringBuilder()).append("FILE SIZE: ").append(s.length()).toString());
        l1 = s.length();
        flag1 = flag2;
        if (l1 == 0L)
        {
            flag1 = true;
        }
        obj3 = s;
        s = ((String) (obj));
        obj2 = obj1;
        obj1 = obj3;
          goto _L4
        obj;
        obj1 = obj6;
        obj2 = obj3;
        s = obj7;
_L5:
        TapjoyLog.e("TapjoyVideo", (new StringBuilder()).append("Error caching video file: ").append(((Exception) (obj)).toString()).toString());
        flag = true;
          goto _L4
        s;
        obj1 = obj;
        obj = s;
        s = ((String) (obj1));
        obj2 = obj3;
        obj1 = obj6;
          goto _L5
        obj2;
        obj1 = s;
        s = ((String) (obj));
        obj = obj2;
        obj2 = obj3;
          goto _L5
        obj2;
        String s2 = s;
        s = ((String) (obj));
        obj = obj2;
        obj2 = obj1;
        obj1 = s2;
          goto _L5
        obj;
        s = ((String) (obj1));
        obj2 = obj4;
        obj1 = obj5;
        continue; /* Loop/switch isn't completed */
        s;
        obj1 = obj;
        obj = s;
        s = ((String) (obj1));
        obj2 = obj4;
        obj1 = obj5;
        continue; /* Loop/switch isn't completed */
        SocketTimeoutException sockettimeoutexception;
        sockettimeoutexception;
        obj1 = s;
        s = ((String) (obj));
        obj = sockettimeoutexception;
        sockettimeoutexception = obj4;
        if (true) goto _L7; else goto _L6
_L6:
    }

    public static TapjoyVideo getInstance()
    {
        return tapjoyVideo;
    }

    public static Bitmap getWatermarkImage()
    {
        return watermarkImage;
    }

    private boolean handleGetVideosResponse(String s)
    {
        Object obj;
        String s1;
        String s2;
        OldTapjoyVideoData oldtapjoyvideodata;
        int i;
        int j;
        int k;
        obj = DocumentBuilderFactory.newInstance();
        TapjoyLog.i("TapjoyVideo", "========================================");
        NodeList nodelist;
        NodeList nodelist1;
        NodeList nodelist2;
        String s3;
        try
        {
            s = new ByteArrayInputStream(s.getBytes("UTF-8"));
            s = ((DocumentBuilderFactory) (obj)).newDocumentBuilder().parse(s);
            s.getDocumentElement().normalize();
            s = s.getElementsByTagName("TapjoyVideos");
            nodelist = s.item(0).getChildNodes();
            obj = s.item(0).getAttributes();
            if (((NamedNodeMap) (obj)).getNamedItem("cache_auto") != null && ((NamedNodeMap) (obj)).getNamedItem("cache_auto").getNodeValue() != null)
            {
                cacheAuto = Boolean.valueOf(((NamedNodeMap) (obj)).getNamedItem("cache_auto").getNodeValue()).booleanValue();
            }
            if (((NamedNodeMap) (obj)).getNamedItem("cache_wifi") != null && ((NamedNodeMap) (obj)).getNamedItem("cache_wifi").getNodeValue() != null)
            {
                cacheWifi = Boolean.valueOf(((NamedNodeMap) (obj)).getNamedItem("cache_wifi").getNodeValue()).booleanValue();
            }
            if (((NamedNodeMap) (obj)).getNamedItem("cache_mobile") != null && ((NamedNodeMap) (obj)).getNamedItem("cache_mobile").getNodeValue() != null)
            {
                cache3g = Boolean.valueOf(((NamedNodeMap) (obj)).getNamedItem("cache_mobile").getNodeValue()).booleanValue();
            }
            TapjoyLog.i("TapjoyVideo", (new StringBuilder()).append("cacheAuto: ").append(cacheAuto).toString());
            TapjoyLog.i("TapjoyVideo", (new StringBuilder()).append("cacheWifi: ").append(cacheWifi).toString());
            TapjoyLog.i("TapjoyVideo", (new StringBuilder()).append("cache3g: ").append(cache3g).toString());
            TapjoyLog.i("TapjoyVideo", (new StringBuilder()).append("nodelistParent length: ").append(s.getLength()).toString());
            TapjoyLog.i("TapjoyVideo", (new StringBuilder()).append("nodelist length: ").append(nodelist.getLength()).toString());
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            TapjoyLog.e("TapjoyVideo", (new StringBuilder()).append("Error parsing XML: ").append(s.toString()).toString());
            return false;
        }
        i = 0;
_L10:
        if (i >= nodelist.getLength()) goto _L2; else goto _L1
_L1:
        s = nodelist.item(i);
        oldtapjoyvideodata = new OldTapjoyVideoData();
        if (s == null) goto _L4; else goto _L3
_L3:
        if (s.getNodeType() != 1) goto _L4; else goto _L5
_L5:
        s = (Element)s;
        obj = TapjoyUtil.getNodeTrimValue(s.getElementsByTagName("ClickURL"));
        if (obj == null)
        {
            break MISSING_BLOCK_LABEL_474;
        }
        if (!((String) (obj)).equals(""))
        {
            oldtapjoyvideodata.setClickURL(((String) (obj)));
        }
        obj = TapjoyUtil.getNodeTrimValue(s.getElementsByTagName("OfferID"));
        if (obj == null)
        {
            break MISSING_BLOCK_LABEL_507;
        }
        if (!((String) (obj)).equals(""))
        {
            oldtapjoyvideodata.setOfferID(((String) (obj)));
        }
        obj = TapjoyUtil.getNodeTrimValue(s.getElementsByTagName("Name"));
        if (obj == null)
        {
            break MISSING_BLOCK_LABEL_540;
        }
        if (!((String) (obj)).equals(""))
        {
            oldtapjoyvideodata.setVideoAdName(((String) (obj)));
        }
        obj = TapjoyUtil.getNodeTrimValue(s.getElementsByTagName("Amount"));
        if (obj == null)
        {
            break MISSING_BLOCK_LABEL_573;
        }
        if (!((String) (obj)).equals(""))
        {
            oldtapjoyvideodata.setCurrencyAmount(((String) (obj)));
        }
        obj = TapjoyUtil.getNodeTrimValue(s.getElementsByTagName("CurrencyName"));
        if (obj == null)
        {
            break MISSING_BLOCK_LABEL_606;
        }
        if (!((String) (obj)).equals(""))
        {
            oldtapjoyvideodata.setCurrencyName(((String) (obj)));
        }
        obj = TapjoyUtil.getNodeTrimValue(s.getElementsByTagName("VideoURL"));
        if (obj == null)
        {
            break MISSING_BLOCK_LABEL_639;
        }
        if (!((String) (obj)).equals(""))
        {
            oldtapjoyvideodata.setVideoURL(((String) (obj)));
        }
        obj = TapjoyUtil.getNodeTrimValue(s.getElementsByTagName("IconURL"));
        if (obj == null)
        {
            break MISSING_BLOCK_LABEL_672;
        }
        if (!((String) (obj)).equals(""))
        {
            oldtapjoyvideodata.setIconURL(((String) (obj)));
        }
        TapjoyLog.i("TapjoyVideo", "-----");
        TapjoyLog.i("TapjoyVideo", (new StringBuilder()).append("videoObject.offerID: ").append(oldtapjoyvideodata.getOfferId()).toString());
        TapjoyLog.i("TapjoyVideo", (new StringBuilder()).append("videoObject.videoAdName: ").append(oldtapjoyvideodata.getVideoAdName()).toString());
        TapjoyLog.i("TapjoyVideo", (new StringBuilder()).append("videoObject.videoURL: ").append(oldtapjoyvideodata.getVideoURL()).toString());
        nodelist1 = s.getElementsByTagName("Buttons").item(0).getChildNodes();
        j = 0;
_L11:
        if (j >= nodelist1.getLength()) goto _L7; else goto _L6
_L6:
        nodelist2 = nodelist1.item(j).getChildNodes();
        if (nodelist2.getLength() != 0) goto _L9; else goto _L8
_L12:
        if (k >= nodelist2.getLength())
        {
            break MISSING_BLOCK_LABEL_1002;
        }
        s1 = s;
        s2 = ((String) (obj));
        if ((Element)nodelist2.item(k) == null)
        {
            break MISSING_BLOCK_LABEL_1147;
        }
        s3 = ((Element)nodelist2.item(k)).getTagName();
        if (!s3.equals("Name") || nodelist2.item(k).getFirstChild() == null)
        {
            break MISSING_BLOCK_LABEL_938;
        }
        s1 = nodelist2.item(k).getFirstChild().getNodeValue();
        s2 = ((String) (obj));
        break MISSING_BLOCK_LABEL_1147;
        s1 = s;
        s2 = ((String) (obj));
        if (!s3.equals("URL"))
        {
            break MISSING_BLOCK_LABEL_1147;
        }
        s1 = s;
        s2 = ((String) (obj));
        if (nodelist2.item(k).getFirstChild() == null)
        {
            break MISSING_BLOCK_LABEL_1147;
        }
        s2 = nodelist2.item(k).getFirstChild().getNodeValue();
        s1 = s;
        break MISSING_BLOCK_LABEL_1147;
        TapjoyLog.i("TapjoyVideo", (new StringBuilder()).append("name: ").append(s).append(", url: ").append(((String) (obj))).toString());
        oldtapjoyvideodata.addButton(s, ((String) (obj)));
          goto _L8
_L7:
        videoQueue.addElement(oldtapjoyvideodata.getOfferId());
        uncachedVideos.put(oldtapjoyvideodata.getOfferId(), oldtapjoyvideodata);
_L4:
        i++;
          goto _L10
_L2:
        TapjoyLog.i("TapjoyVideo", "========================================");
        return true;
_L8:
        j++;
          goto _L11
_L9:
        s = "";
        obj = "";
        k = 0;
          goto _L12
        k++;
        s = s1;
        obj = s2;
          goto _L12
    }

    private void printCachedVideos()
    {
        TapjoyLog.i("TapjoyVideo", (new StringBuilder()).append("cachedVideos size: ").append(cachedVideos.size()).toString());
        java.util.Map.Entry entry;
        for (Iterator iterator = cachedVideos.entrySet().iterator(); iterator.hasNext(); TapjoyLog.i("TapjoyVideo", (new StringBuilder()).append("key: ").append((String)entry.getKey()).append(", name: ").append(((OldTapjoyVideoData)entry.getValue()).getVideoAdName()).toString()))
        {
            entry = (java.util.Map.Entry)iterator.next();
        }

    }

    private void setVideoIDs()
    {
        String s = "";
        String s1 = s;
        if (cachedVideos != null)
        {
            s1 = s;
            if (cachedVideos.size() > 0)
            {
                Enumeration enumeration = cachedVideos.keys();
                do
                {
                    if (!enumeration.hasMoreElements())
                    {
                        break;
                    }
                    s1 = (String)enumeration.nextElement();
                    s1 = (new StringBuilder()).append(s).append(s1).toString();
                    s = s1;
                    if (enumeration.hasMoreElements())
                    {
                        s = (new StringBuilder()).append(s1).append(",").toString();
                    }
                } while (true);
                TapjoyLog.i("TapjoyVideo", (new StringBuilder()).append("cachedVideos size: ").append(cachedVideos.size()).toString());
                s1 = s;
            }
        }
        TapjoyLog.i("TapjoyVideo", (new StringBuilder()).append("videoIDs: [").append(s1).append("]").toString());
    }

    private boolean validateCachedVideos()
    {
        boolean flag2 = false;
        boolean flag = true;
        File afile[] = (new File(videoCacheDir)).listFiles();
        if (uncachedVideos == null)
        {
            TapjoyLog.e("TapjoyVideo", "Error: uncachedVideos is null");
            flag = false;
        }
        if (cachedVideos == null)
        {
            TapjoyLog.e("TapjoyVideo", "Error: cachedVideos is null");
            flag = false;
        }
        if (videoQueue == null)
        {
            TapjoyLog.e("TapjoyVideo", "Error: videoQueue is null");
            flag = false;
        }
        boolean flag1 = flag2;
        if (flag)
        {
            flag1 = flag2;
            if (afile != null)
            {
                int i = 0;
                while (i < afile.length) 
                {
                    String s = afile[i].getName();
                    TapjoyLog.i("TapjoyVideo", "-----");
                    TapjoyLog.i("TapjoyVideo", (new StringBuilder()).append("Examining cached file[").append(i).append("]: ").append(afile[i].getAbsolutePath()).append(" --- ").append(afile[i].getName()).toString());
                    if (uncachedVideos.containsKey(s))
                    {
                        TapjoyLog.i("TapjoyVideo", "Local file found");
                        OldTapjoyVideoData oldtapjoyvideodata = (OldTapjoyVideoData)uncachedVideos.get(s);
                        if (oldtapjoyvideodata != null)
                        {
                            String s1 = (new TapjoyURLConnection()).getContentLength(oldtapjoyvideodata.getVideoURL());
                            TapjoyLog.i("TapjoyVideo", (new StringBuilder()).append("local file size: ").append(afile[i].length()).append(" vs. target: ").append(s1).toString());
                            if (s1 != null && (long)Integer.parseInt(s1) == afile[i].length())
                            {
                                oldtapjoyvideodata.setLocalFilePath(afile[i].getAbsolutePath());
                                cachedVideos.put(s, oldtapjoyvideodata);
                                uncachedVideos.remove(s);
                                videoQueue.remove(s);
                                TapjoyLog.i("TapjoyVideo", (new StringBuilder()).append("VIDEO PREVIOUSLY CACHED -- ").append(s).append(", location: ").append(oldtapjoyvideodata.getLocalFilePath()).toString());
                            } else
                            {
                                TapjoyLog.i("TapjoyVideo", (new StringBuilder()).append("file size mismatch --- deleting video: ").append(afile[i].getAbsolutePath()).toString());
                                TapjoyUtil.deleteFileOrDirectory(afile[i]);
                            }
                        }
                    } else
                    {
                        TapjoyLog.i("TapjoyVideo", (new StringBuilder()).append("VIDEO EXPIRED? removing video from cache: ").append(s).append(" --- ").append(afile[i].getAbsolutePath()).toString());
                        TapjoyUtil.deleteFileOrDirectory(afile[i]);
                    }
                    i++;
                }
                flag1 = true;
            }
        }
        return flag1;
    }

    public static void videoNotifierComplete()
    {
        if (tapjoyVideoNotifier != null)
        {
            tapjoyVideoNotifier.videoComplete();
        }
    }

    public static void videoNotifierError(int i)
    {
        if (tapjoyVideoNotifier != null)
        {
            tapjoyVideoNotifier.videoError(i);
        }
    }

    public static void videoNotifierStart()
    {
        if (tapjoyVideoNotifier != null)
        {
            tapjoyVideoNotifier.videoStart();
        }
    }

    public void cacheVideos()
    {
        (new Thread(new Runnable() {

            final TapjoyVideo this$0;

            public void run()
            {
                int i;
                TapjoyLog.i("TapjoyVideo", "--- cacheAllVideos called ---");
                i = 0;
_L2:
                int j;
                if (initialized)
                {
                    break; /* Loop/switch isn't completed */
                }
                j = i;
                Thread.sleep(500L);
                j = (int)((long)i + 500L);
                i = j;
                if ((long)j > 10000L)
                {
                    try
                    {
                        TapjoyLog.e("TapjoyVideo", "Error during cacheVideos.  Timeout while waiting for initVideos to finish.");
                        return;
                    }
                    catch (Exception exception)
                    {
                        TapjoyLog.e("TapjoyVideo", (new StringBuilder()).append("Exception in cacheAllVideos: ").append(exception.toString()).toString());
                    }
                    i = j;
                }
                if (true) goto _L2; else goto _L1
_L1:
                TapjoyLog.i("TapjoyVideo", (new StringBuilder()).append("cacheVideos connection_type: ").append(TapjoyConnectCore.getConnectionType()).toString());
                TapjoyLog.i("TapjoyVideo", (new StringBuilder()).append("cache3g: ").append(cache3g).toString());
                TapjoyLog.i("TapjoyVideo", (new StringBuilder()).append("cacheWifi: ").append(cacheWifi).toString());
                if (cache3g && TapjoyConnectCore.getConnectionType().equals("mobile") || cacheWifi && TapjoyConnectCore.getConnectionType().equals("wifi"))
                {
                    if (!"mounted".equals(Environment.getExternalStorageState()))
                    {
                        TapjoyLog.i("TapjoyVideo", "Media storage unavailable.  Aborting caching videos.");
                        TapjoyVideo.videoNotifierError(1);
                        return;
                    }
                    String s;
                    for (; cachedVideos.size() < videoCacheLimit && videoQueue.size() > 0; cacheVideoFromURL(s))
                    {
                        s = ((OldTapjoyVideoData)uncachedVideos.get(videoQueue.elementAt(0))).getVideoURL();
                    }

                } else
                {
                    TapjoyLog.i("TapjoyVideo", " * Skipping caching videos because of video flags and connection_type...");
                }
                printCachedVideos();
                return;
            }

            
            {
                this$0 = TapjoyVideo.this;
                super();
            }
        })).start();
    }

    public OldTapjoyVideoData getCurrentVideoData()
    {
        return videoToPlay;
    }

    public void init()
    {
        TapjoyLog.i("TapjoyVideo", "initVideoAd");
        if (!TapjoyConnectCore.isVideoEnabled())
        {
            TapjoyLog.i("TapjoyVideo", "Videos have been configured to be disabled. Aborting video initialization... ");
            return;
        } else
        {
            setVideoIDs();
            (new Thread(new Runnable() {

                final TapjoyVideo this$0;

                public void run()
                {
                    boolean flag1 = false;
                    TapjoyHttpURLResponse tapjoyhttpurlresponse = (new TapjoyURLConnection()).getResponseFromURL((new StringBuilder()).append(TapjoyConnectCore.getHostURL()).append("videos?").toString(), TapjoyConnectCore.getURLParams());
                    boolean flag = flag1;
                    if (tapjoyhttpurlresponse.response != null)
                    {
                        flag = flag1;
                        if (tapjoyhttpurlresponse.response.length() > 0)
                        {
                            flag = handleGetVideosResponse(tapjoyhttpurlresponse.response);
                        }
                    }
                    if (flag)
                    {
                        validateCachedVideos();
                        if ("https://s3.amazonaws.com/tapjoy/videos/assets/watermark.png" != null && "https://s3.amazonaws.com/tapjoy/videos/assets/watermark.png".length() > 0)
                        {
                            try
                            {
                                URL url = new URL("https://s3.amazonaws.com/tapjoy/videos/assets/watermark.png");
                                URLConnection urlconnection = url.openConnection();
                                urlconnection.setConnectTimeout(15000);
                                urlconnection.setReadTimeout(25000);
                                urlconnection.connect();
                                TapjoyVideo.watermarkImage = BitmapFactory.decodeStream(url.openConnection().getInputStream());
                                urlconnection.getInputStream().close();
                            }
                            catch (Exception exception)
                            {
                                TapjoyLog.e("TapjoyVideo", (new StringBuilder()).append("e: ").append(exception.toString()).toString());
                            }
                        }
                        setVideoIDs();
                        initialized = true;
                        if (cacheAuto)
                        {
                            TapjoyLog.i("TapjoyVideo", "trying to cache because of cache_auto flag...");
                            cacheVideos();
                        }
                        TapjoyLog.i("TapjoyVideo", "------------------------------");
                        TapjoyLog.i("TapjoyVideo", "------------------------------");
                        TapjoyLog.i("TapjoyVideo", "INIT DONE!");
                        TapjoyLog.i("TapjoyVideo", "------------------------------");
                        return;
                    } else
                    {
                        TapjoyVideo.videoNotifierError(2);
                        return;
                    }
                }

            
            {
                this$0 = TapjoyVideo.this;
                super();
            }
            })).start();
            return;
        }
    }

    public void setVideoCacheCount(int i)
    {
        videoCacheLimit = i;
    }

    public void setVideoNotifier(TapjoyVideoNotifier tapjoyvideonotifier)
    {
        tapjoyVideoNotifier = tapjoyvideonotifier;
    }

    public boolean startVideo(String s, String s1, String s2, String s3, String s4, String s5)
    {
label0:
        {
label1:
            {
                boolean flag = true;
                TapjoyLog.i("TapjoyVideo", (new StringBuilder()).append("Starting video activity with video: ").append(s).toString());
                if (s == null || s3 == null || s4 == null || s.length() == 0 || s3.length() == 0 || s4.length() == 0)
                {
                    TapjoyLog.i("TapjoyVideo", "aborting video playback... invalid or missing parameter");
                    return false;
                }
                videoToPlay = (OldTapjoyVideoData)cachedVideos.get(s);
                if (videoToPlay == null)
                {
                    TapjoyLog.i("TapjoyVideo", "video not cached... checking uncached videos");
                    videoToPlay = (OldTapjoyVideoData)uncachedVideos.get(s);
                    if (videoToPlay == null)
                    {
                        if (s5 == null || s5.length() <= 0)
                        {
                            break label1;
                        }
                        OldTapjoyVideoData oldtapjoyvideodata = new OldTapjoyVideoData();
                        oldtapjoyvideodata.setOfferID(s);
                        oldtapjoyvideodata.setCurrencyName(s1);
                        oldtapjoyvideodata.setCurrencyAmount(s2);
                        oldtapjoyvideodata.setClickURL(s3);
                        oldtapjoyvideodata.setWebviewURL(s4);
                        oldtapjoyvideodata.setVideoURL(s5);
                        uncachedVideos.put(s, oldtapjoyvideodata);
                        videoToPlay = (OldTapjoyVideoData)uncachedVideos.get(s);
                    }
                    flag = false;
                }
                videoToPlay.setCurrencyName(s1);
                videoToPlay.setCurrencyAmount(s2);
                videoToPlay.setClickURL(s3);
                videoToPlay.setWebviewURL(s4);
                videoToPlay.setVideoURL(s5);
                TapjoyLog.i("TapjoyVideo", (new StringBuilder()).append("videoToPlay: ").append(videoToPlay.getOfferId()).toString());
                TapjoyLog.i("TapjoyVideo", (new StringBuilder()).append("amount: ").append(videoToPlay.getCurrencyAmount()).toString());
                TapjoyLog.i("TapjoyVideo", (new StringBuilder()).append("currency: ").append(videoToPlay.getCurrencyName()).toString());
                TapjoyLog.i("TapjoyVideo", (new StringBuilder()).append("clickURL: ").append(videoToPlay.getClickURL()).toString());
                TapjoyLog.i("TapjoyVideo", (new StringBuilder()).append("webviewURL: ").append(videoToPlay.getWebviewURL()).toString());
                TapjoyLog.i("TapjoyVideo", (new StringBuilder()).append("videoURL: ").append(videoToPlay.getVideoURL()).toString());
                if (flag && videoToPlay.getLocalFilePath() != null)
                {
                    s = new File(videoToPlay.getLocalFilePath());
                    if (s == null || !s.exists())
                    {
                        TapjoyLog.e("TapjoyVideo", "video file does not exist.");
                        return false;
                    }
                }
                break label0;
            }
            TapjoyLog.e("TapjoyVideo", "no video data and no video url - aborting playback...");
            return false;
        }
        s = new Intent(context, com/tapjoy/TapjoyVideoView);
        s.setFlags(0x10000000);
        s.putExtra("VIDEO_DATA", videoToPlay);
        context.startActivity(s);
        return true;
    }









/*
    static Bitmap access$202(Bitmap bitmap)
    {
        watermarkImage = bitmap;
        return bitmap;
    }

*/




/*
    static boolean access$402(TapjoyVideo tapjoyvideo, boolean flag)
    {
        tapjoyvideo.initialized = flag;
        return flag;
    }

*/





}
