// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.adobe.air.wand.connection;

import android.app.Activity;
import android.net.ConnectivityManager;
import android.net.wifi.WifiInfo;
import android.net.wifi.WifiManager;
import android.os.AsyncTask;
import java.io.File;
import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.net.InetAddress;
import java.net.InetSocketAddress;
import java.net.NetworkInterface;
import java.net.SocketException;
import java.net.UnknownHostException;
import java.nio.channels.CancelledKeyException;
import java.util.Enumeration;
import java.util.Timer;
import java.util.TimerTask;
import java.util.regex.Pattern;
import org.apache.http.HttpResponse;
import org.apache.http.StatusLine;
import org.apache.http.client.HttpClient;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.conn.util.InetAddressUtils;
import org.apache.http.impl.client.DefaultHttpClient;
import org.java_websocket.WebSocket;
import org.java_websocket.handshake.ClientHandshake;
import org.java_websocket.server.WebSocketServer;
import org.json.JSONObject;

// Referenced classes of package com.adobe.air.wand.connection:
//            Connection

public class WandWebSocket
    implements Connection
{
    private class ConnectPingTask extends AsyncTask
    {

        final WandWebSocket this$0;

        protected transient Long doInBackground(String as[])
        {
            if (as == null || as.length < 1)
            {
                return Long.valueOf(0L);
            }
            try
            {
                as = new HttpGet(as[0]);
                if ((new DefaultHttpClient()).execute(as).getStatusLine().getStatusCode() == 200)
                {
                    (new File(mActivity.getFilesDir(), "connectPingFlag")).createNewFile();
                }
            }
            // Misplaced declaration of an exception variable
            catch (String as[])
            {
                return Long.valueOf(-1L);
            }
            return Long.valueOf(0L);
        }

        protected volatile Object doInBackground(Object aobj[])
        {
            return doInBackground((String[])aobj);
        }

        protected void onPostExecute(Long long1)
        {
        }

        protected volatile void onPostExecute(Object obj)
        {
            onPostExecute((Long)obj);
        }

        protected transient void onProgressUpdate(Integer ainteger[])
        {
        }

        protected volatile void onProgressUpdate(Object aobj[])
        {
            onProgressUpdate((Integer[])aobj);
        }

        private ConnectPingTask()
        {
            this$0 = WandWebSocket.this;
            super();
        }

    }

    private static class Handshake
    {

        private static final String DESTINATION_ID = "destinationID";
        private static final String PROTOCOL = "protocol";
        private static final String SOURCE_ID = "sourceID";
        private static final String STATUS = "status";
        private static final String STATUS_FAILURE = "FAILURE";
        private static final String STATUS_SUCCESS = "SUCCESS";
        public static final int TIMEOUT_MILLISECONDS = 30000;
        private static final String VERSION = "version";
        private String mDestinationID;
        private String mProtocol;
        private String mSourceID;
        private String mVersion;

        public static Handshake parse(String s)
            throws Exception
        {
            s = new JSONObject(s);
            Handshake handshake = new Handshake();
            handshake.mProtocol = s.getString("protocol");
            handshake.mVersion = s.getString("version");
            handshake.mSourceID = s.getString("sourceID");
            handshake.mDestinationID = s.getString("destinationID");
            return handshake;
        }

        public String getDestinationID()
        {
            return mDestinationID;
        }

        public String getFailureResponse(String s, String s1)
            throws Exception
        {
            JSONObject jsonobject = new JSONObject();
            jsonobject.put("protocol", "WEBSOCKET");
            jsonobject.put("version", s1);
            jsonobject.put("sourceID", s);
            jsonobject.put("destinationID", mSourceID);
            jsonobject.put("status", "FAILURE");
            return jsonobject.toString();
        }

        public String getProtocol()
        {
            return mProtocol;
        }

        public String getSourceID()
        {
            return mSourceID;
        }

        public String getSuccessResponse(String s, String s1)
            throws Exception
        {
            JSONObject jsonobject = new JSONObject();
            jsonobject.put("protocol", "WEBSOCKET");
            jsonobject.put("version", s1);
            jsonobject.put("sourceID", s);
            jsonobject.put("destinationID", mSourceID);
            jsonobject.put("status", "SUCCESS");
            return jsonobject.toString();
        }

        public String getVersion()
        {
            return mVersion;
        }

        private Handshake()
        {
            mProtocol = "WEBSOCKET";
            mVersion = "1.0.0";
            mSourceID = null;
            mDestinationID = null;
        }
    }

    private class WandSocketServer extends WebSocketServer
    {

        private boolean mHasStartedServer;
        final WandWebSocket this$0;

        private void scheduleHandshakeTimer()
        {
            try
            {
                mHandshakeTimer.schedule(new TimerTask() {

                    final WandSocketServer this$1;

                    public void run()
                    {
                        "OPEN_SYNCHRONIZER";
                        JVM INSTR monitorenter ;
                        if (mConnection != null)
                        {
                            break MISSING_BLOCK_LABEL_20;
                        }
                        "OPEN_SYNCHRONIZER";
                        JVM INSTR monitorexit ;
                        return;
                        "HANDSHAKE_SYNCHRONIZER";
                        JVM INSTR monitorenter ;
                        if (mHandshake == null)
                        {
                            break MISSING_BLOCK_LABEL_49;
                        }
                        "HANDSHAKE_SYNCHRONIZER";
                        JVM INSTR monitorexit ;
                        "OPEN_SYNCHRONIZER";
                        JVM INSTR monitorexit ;
                        return;
                        Exception exception;
                        exception;
                        "OPEN_SYNCHRONIZER";
                        JVM INSTR monitorexit ;
                        throw exception;
                        "HANDSHAKE_SYNCHRONIZER";
                        JVM INSTR monitorexit ;
                        "OPEN_SYNCHRONIZER";
                        JVM INSTR monitorexit ;
                        mConnection.close(1003, "AIR Gamepad handshake timedout");
                        return;
                        exception;
                        "HANDSHAKE_SYNCHRONIZER";
                        JVM INSTR monitorexit ;
                        throw exception;
                    }

            
            {
                this$1 = WandSocketServer.this;
                super();
            }
                }, 30000L);
                return;
            }
            catch (Exception exception)
            {
                return;
            }
        }

        public void onClose(WebSocket websocket, int i, String s, boolean flag)
        {
            "OPEN_SYNCHRONIZER";
            JVM INSTR monitorenter ;
            if (mConnection != websocket) goto _L2; else goto _L1
_L1:
            mConnection = null;
            "HANDSHAKE_SYNCHRONIZER";
            JVM INSTR monitorenter ;
            if (mHandshake != null)
            {
                mHandshake = null;
                if (mConnectionListener != null)
                {
                    mConnectionListener.onConnectionClose();
                }
            }
            "HANDSHAKE_SYNCHRONIZER";
            JVM INSTR monitorexit ;
_L2:
            "OPEN_SYNCHRONIZER";
            JVM INSTR monitorexit ;
            return;
            websocket;
            "HANDSHAKE_SYNCHRONIZER";
            JVM INSTR monitorexit ;
            throw websocket;
            websocket;
            "OPEN_SYNCHRONIZER";
            JVM INSTR monitorexit ;
            throw websocket;
        }

        public void onError(WebSocket websocket, Exception exception)
        {
            if (mConnection == null || mConnection == websocket || websocket == null)
            {
                break MISSING_BLOCK_LABEL_36;
            }
            websocket.close(1003, "AIR Gamepad is already connected");
            return;
            websocket;
        }

        public void onMessage(WebSocket websocket, String s)
        {
            "OPEN_SYNCHRONIZER";
            JVM INSTR monitorenter ;
            if (websocket == mConnection)
            {
                break MISSING_BLOCK_LABEL_18;
            }
            "OPEN_SYNCHRONIZER";
            JVM INSTR monitorexit ;
            return;
            "HANDSHAKE_SYNCHRONIZER";
            JVM INSTR monitorenter ;
            if (mHandshake == null)
            {
                break MISSING_BLOCK_LABEL_83;
            }
            if (!s.equals("NO_OP"))
            {
                break MISSING_BLOCK_LABEL_53;
            }
            "HANDSHAKE_SYNCHRONIZER";
            JVM INSTR monitorexit ;
            "OPEN_SYNCHRONIZER";
            JVM INSTR monitorexit ;
            return;
            websocket;
            "OPEN_SYNCHRONIZER";
            JVM INSTR monitorexit ;
            throw websocket;
            if (mConnectionListener != null)
            {
                mConnectionListener.onReceive(s);
            }
            "HANDSHAKE_SYNCHRONIZER";
            JVM INSTR monitorexit ;
            "OPEN_SYNCHRONIZER";
            JVM INSTR monitorexit ;
            return;
            Handshake handshake = Handshake.parse(s);
            s = handshake;
            if (validateHandshake(handshake))
            {
                break MISSING_BLOCK_LABEL_122;
            }
            websocket.send(handshake.getFailureResponse(mLocalID, "1.0.0"));
            s = null;
_L2:
            if (s != null)
            {
                break; /* Loop/switch isn't completed */
            }
            websocket.close(1003, "Invalid AIR Gamepad handshake");
            "HANDSHAKE_SYNCHRONIZER";
            JVM INSTR monitorexit ;
            "OPEN_SYNCHRONIZER";
            JVM INSTR monitorexit ;
            return;
            s;
            s = null;
            if (true) goto _L2; else goto _L1
_L1:
            mHandshake = s;
            if (mConnectionListener != null)
            {
                mConnectionListener.onConnectionOpen(s.getVersion());
            }
_L3:
            "HANDSHAKE_SYNCHRONIZER";
            JVM INSTR monitorexit ;
            "OPEN_SYNCHRONIZER";
            JVM INSTR monitorexit ;
            return;
            websocket;
            mHandshake = null;
              goto _L3
            websocket;
            "HANDSHAKE_SYNCHRONIZER";
            JVM INSTR monitorexit ;
            throw websocket;
        }

        public void onOpen(WebSocket websocket, ClientHandshake clienthandshake)
        {
            "OPEN_SYNCHRONIZER";
            JVM INSTR monitorenter ;
            if (!mAllowIncomingConnection || mConnection != null)
            {
                break MISSING_BLOCK_LABEL_40;
            }
            mConnection = websocket;
            scheduleHandshakeTimer();
            "OPEN_SYNCHRONIZER";
            JVM INSTR monitorexit ;
            return;
            "OPEN_SYNCHRONIZER";
            JVM INSTR monitorexit ;
            websocket.close(1003, "AIR Gamepad is already connected");
            return;
            websocket;
            "OPEN_SYNCHRONIZER";
            JVM INSTR monitorexit ;
            throw websocket;
        }

        public void start()
        {
            if (mHasStartedServer)
            {
                return;
            } else
            {
                super.start();
                mHasStartedServer = true;
                return;
            }
        }

        public void stop()
            throws IOException, InterruptedException
        {
            if (mHasStartedServer)
            {
                try
                {
                    super.stop();
                }
                catch (CancelledKeyException cancelledkeyexception) { }
                mHasStartedServer = false;
                if (mWandSocketServer != null)
                {
                    if (mConnection != null)
                    {
                        forceCloseConnection();
                    }
                    mWandSocketServer = null;
                    try
                    {
                        startSocketServer();
                        return;
                    }
                    catch (Exception exception)
                    {
                        return;
                    }
                }
            }
        }

        public WandSocketServer(InetSocketAddress inetsocketaddress)
            throws UnknownHostException
        {
            this$0 = WandWebSocket.this;
            super(inetsocketaddress);
            mHasStartedServer = false;
        }
    }


    private static final String CONNECT_PING_FLAG_FILE = "connectPingFlag";
    private static final String CONNECT_PING_URL = "http://dh8vjmvwgc27o.cloudfront.net/AIRGamepad/connect_ping.txt";
    private static final String LOG_TAG = "WandWebSocket";
    private static final String WEBSOCKET_PROTOCOL = "WEBSOCKET";
    private final String HANDSHAKE_SYNCHRONIZER = "HANDSHAKE_SYNCHRONIZER";
    private final String OPEN_SYNCHRONIZER = "OPEN_SYNCHRONIZER";
    private Activity mActivity;
    private boolean mAllowIncomingConnection;
    private WebSocket mConnection;
    private Connection.Listener mConnectionListener;
    private String mConnectionToken;
    private Handshake mHandshake;
    private Timer mHandshakeTimer;
    private boolean mIsDisposed;
    private String mLocalID;
    private WandSocketServer mWandSocketServer;

    public WandWebSocket(Activity activity)
        throws UnknownHostException
    {
        mConnectionListener = null;
        mConnection = null;
        mAllowIncomingConnection = false;
        mConnectionToken = null;
        mLocalID = null;
        mHandshake = null;
        mHandshakeTimer = null;
        mWandSocketServer = null;
        mActivity = null;
        mIsDisposed = false;
        mActivity = activity;
        mHandshakeTimer = new Timer();
    }

    private String constructLocalID()
        throws Exception
    {
        InetAddress inetaddress = getLocalIpAddress();
        if (inetaddress == null)
        {
            return null;
        } else
        {
            byte abyte0[] = inetaddress.getAddress();
            return Long.toString((long)getUnsignedByte(abyte0[3]) * 1L + (long)getUnsignedByte(abyte0[2]) * 256L + (long)getUnsignedByte(abyte0[1]) * 0x10000L + (long)getUnsignedByte(abyte0[0]) * 0x1000000L, 32).toUpperCase();
        }
    }

    private void forceCloseConnection()
    {
        WebSocket websocket = mConnection;
        mWandSocketServer.onClose(mConnection, 1001, "AIR Gamepad has closed", false);
        websocket.close(1001, "AIR Gamepad has closed");
    }

    private InetAddress getLocalIpAddress()
    {
        InetAddress inetaddress;
        InetAddress inetaddress1;
        try
        {
            inetaddress1 = getWiFiIpAddress();
        }
        catch (Exception exception)
        {
            return null;
        }
        inetaddress = inetaddress1;
        if (inetaddress1 != null)
        {
            break MISSING_BLOCK_LABEL_16;
        }
        inetaddress = getWiFiHotspotIpAddress();
        return inetaddress;
    }

    private int getPreferredPort()
    {
        return 1234;
    }

    private int getUnsignedByte(byte byte0)
    {
        if (byte0 >= 0)
        {
            return byte0;
        } else
        {
            return byte0 + 256;
        }
    }

    private InetAddress getWiFiHotspotIpAddress()
        throws UnknownHostException, SocketException
    {
        Object obj;
        Method amethod[];
        boolean flag;
        int l;
        int i1;
        if ((ConnectivityManager)mActivity.getSystemService("connectivity") == null)
        {
            return null;
        }
        obj = (WifiManager)mActivity.getSystemService("wifi");
        if (obj == null)
        {
            return null;
        }
        amethod = obj.getClass().getDeclaredMethods();
        i1 = amethod.length;
        l = 0;
        flag = false;
_L2:
        Object obj2;
        if (l >= i1)
        {
            break; /* Loop/switch isn't completed */
        }
        obj2 = amethod[l];
        if (!((Method) (obj2)).getName().equals("isWifiApEnabled"))
        {
            break MISSING_BLOCK_LABEL_103;
        }
        boolean flag1 = ((Boolean)((Method) (obj2)).invoke(obj, new Object[0])).booleanValue();
        if (flag1)
        {
            flag = true;
        }
_L3:
        l++;
        if (true) goto _L2; else goto _L1
        Object obj3;
        obj3;
          goto _L3
        obj3;
          goto _L3
        obj3;
          goto _L3
_L1:
        byte abyte0[];
        Object obj1;
        if (!flag)
        {
            return null;
        }
        obj = ((WifiManager) (obj)).getConnectionInfo();
        if (obj == null)
        {
            return null;
        }
        obj1 = ((WifiInfo) (obj)).getMacAddress().toLowerCase();
        abyte0 = new byte[6];
        if (((String) (obj1)).indexOf(":") == -1 && ((String) (obj1)).length() == 12)
        {
            for (int i = 0; i < abyte0.length; i++)
            {
                abyte0[i] = (byte)Integer.parseInt(((String) (obj1)).substring(i * 2, i * 2 + 2), 16);
            }

        } else
        {
            String as[] = ((String) (obj1)).split(":");
            for (int j = 0; j < abyte0.length && j < as.length; j++)
            {
                abyte0[j] = (byte)Integer.parseInt(as[j], 16);
            }

        }
        as = NetworkInterface.getNetworkInterfaces();
_L7:
        if (!as.hasMoreElements()) goto _L5; else goto _L4
_L4:
        Enumeration enumeration;
        obj3 = (NetworkInterface)as.nextElement();
        enumeration = ((NetworkInterface) (obj3)).getInetAddresses();
_L9:
        if (!enumeration.hasMoreElements()) goto _L7; else goto _L6
_L6:
        InetAddress inetaddress = (InetAddress)enumeration.nextElement();
        if (inetaddress.isLoopbackAddress() || !InetAddressUtils.isIPv4Address(inetaddress.getHostAddress())) goto _L9; else goto _L8
_L8:
        byte abyte1[] = ((NetworkInterface) (obj3)).getHardwareAddress();
        if (abyte1 == null || abyte1.length != 6) goto _L9; else goto _L10
_L10:
        int k = 0;
_L13:
        if (k >= abyte1.length)
        {
            break MISSING_BLOCK_LABEL_403;
        }
        if (abyte1[k] == abyte0[k]) goto _L12; else goto _L11
_L11:
        k = 0;
_L14:
        if (k != 0)
        {
            return inetaddress;
        }
          goto _L9
_L12:
        k++;
          goto _L13
_L5:
        return null;
        SocketException socketexception;
        socketexception;
          goto _L9
        k = 1;
          goto _L14
    }

    private InetAddress getWiFiIpAddress()
        throws UnknownHostException
    {
        Object obj = (WifiManager)mActivity.getSystemService("wifi");
        if (obj == null)
        {
            return null;
        }
        obj = ((WifiManager) (obj)).getConnectionInfo();
        if (obj == null)
        {
            return null;
        }
        int i = ((WifiInfo) (obj)).getIpAddress();
        if (i == 0)
        {
            return null;
        } else
        {
            return InetAddress.getByName(String.format("%d.%d.%d.%d", new Object[] {
                Integer.valueOf(i & 0xff), Integer.valueOf(i >> 8 & 0xff), Integer.valueOf(i >> 16 & 0xff), Integer.valueOf(i >> 24 & 0xff)
            }));
        }
    }

    private void pingServerOnConnect()
    {
        if ((new File(mActivity.getFilesDir(), "connectPingFlag")).exists())
        {
            return;
        } else
        {
            (new ConnectPingTask()).execute(new String[] {
                "http://dh8vjmvwgc27o.cloudfront.net/AIRGamepad/connect_ping.txt"
            });
            return;
        }
    }

    private void startSocketServer()
        throws Exception
    {
        if (mWandSocketServer == null)
        {
            mWandSocketServer = new WandSocketServer(new InetSocketAddress(getLocalIpAddress(), getPreferredPort()));
            mWandSocketServer.start();
        }
    }

    private void stopSocketServer()
    {
        WandSocketServer wandsocketserver;
        wandsocketserver = mWandSocketServer;
        mWandSocketServer = null;
        if (wandsocketserver == null)
        {
            break MISSING_BLOCK_LABEL_18;
        }
        wandsocketserver.stop();
        return;
        Exception exception;
        exception;
    }

    private boolean validateHandshake(Handshake handshake)
    {
        if (handshake == null)
        {
            return false;
        }
        if (!"WEBSOCKET".equals(handshake.getProtocol()))
        {
            return false;
        }
        if (!mLocalID.equals(handshake.getDestinationID()))
        {
            return false;
        }
        return Pattern.matches("\\d+\\.\\d+\\.\\d+", handshake.getVersion());
    }

    public void connect()
        throws Exception
    {
        if (mIsDisposed)
        {
            throw new Exception("Connection has been disposed");
        }
        if (mAllowIncomingConnection)
        {
            throw new Exception("Connection is already established");
        }
        mAllowIncomingConnection = true;
        if (mWandSocketServer == null)
        {
            startSocketServer();
        }
        mLocalID = constructLocalID();
        mConnectionToken = mLocalID;
        if (mConnectionListener != null)
        {
            mConnectionListener.updateConnectionToken(getConnectionToken());
        }
        if (mConnectionListener != null)
        {
            mConnectionListener.onConnectSuccess();
        }
    }

    public void disconnect()
        throws Exception
    {
        if (mIsDisposed)
        {
            throw new Exception("Connection has been disposed");
        }
        if (!mAllowIncomingConnection)
        {
            throw new Exception("Connection is not established");
        }
        if (mConnection != null)
        {
            forceCloseConnection();
        }
        stopSocketServer();
        mAllowIncomingConnection = false;
        if (mConnectionListener != null)
        {
            mConnectionListener.onDisconnectSuccess();
        }
    }

    public void dispose()
        throws Exception
    {
        if (mIsDisposed)
        {
            return;
        }
        mIsDisposed = true;
        if (mAllowIncomingConnection)
        {
            disconnect();
        }
        unregisterListener();
        if (mConnection != null)
        {
            mConnection.close(1001, "AIR Gamepad has closed");
        }
        mConnection = null;
        mHandshake = null;
        if (mHandshakeTimer != null)
        {
            mHandshakeTimer.cancel();
            mHandshakeTimer.purge();
        }
        mHandshakeTimer = null;
        mWandSocketServer = null;
        mActivity = null;
    }

    public String getConnectionToken()
        throws Exception
    {
        if (mIsDisposed)
        {
            throw new Exception("Connection has been disposed");
        }
        if (!mAllowIncomingConnection)
        {
            throw new Exception("Connection is not established");
        }
        if (mConnectionToken == null)
        {
            return "";
        } else
        {
            return mConnectionToken;
        }
    }

    public void onConnectionChanged()
    {
_L2:
        return;
        if (mIsDisposed || !mAllowIncomingConnection) goto _L2; else goto _L1
_L1:
        String s = constructLocalID();
        if (mLocalID == null && s == null) goto _L2; else goto _L3
_L3:
        if (mLocalID == null || s == null)
        {
            break; /* Loop/switch isn't completed */
        }
        if (mLocalID.equals(s)) goto _L2; else goto _L4
_L4:
        disconnect();
        connect();
        return;
        Exception exception;
        exception;
    }

    public void onReadyForConnection()
        throws Exception
    {
        if (mHandshake == null || mLocalID == null)
        {
            throw new Exception("Invalid state at onReadyForConnection callback.");
        } else
        {
            mConnection.send(mHandshake.getSuccessResponse(mLocalID, "1.0.0"));
            pingServerOnConnect();
            return;
        }
    }

    public void registerListener(Connection.Listener listener)
        throws Exception
    {
        if (mIsDisposed)
        {
            throw new Exception("Connection has been disposed");
        }
        if (listener == null)
        {
            throw new Exception("Invalid Connection.Listener");
        }
        if (mConnectionListener != null)
        {
            throw new Exception("A listener is already registered");
        } else
        {
            mConnectionListener = listener;
            return;
        }
    }

    public void send(String s)
        throws Exception
    {
        if (mIsDisposed)
        {
            throw new Exception("Connection has been disposed");
        }
        if (mConnection == null)
        {
            break MISSING_BLOCK_LABEL_35;
        }
        mConnection.send(s);
        return;
        s;
        throw new Exception("Unable to send Message");
    }

    public void unregisterListener()
    {
        mConnectionListener = null;
    }



/*
    static WandSocketServer access$002(WandWebSocket wandwebsocket, WandSocketServer wandsocketserver)
    {
        wandwebsocket.mWandSocketServer = wandsocketserver;
        return wandsocketserver;
    }

*/




/*
    static WebSocket access$102(WandWebSocket wandwebsocket, WebSocket websocket)
    {
        wandwebsocket.mConnection = websocket;
        return websocket;
    }

*/






/*
    static Handshake access$502(WandWebSocket wandwebsocket, Handshake handshake)
    {
        wandwebsocket.mHandshake = handshake;
        return handshake;
    }

*/




}
