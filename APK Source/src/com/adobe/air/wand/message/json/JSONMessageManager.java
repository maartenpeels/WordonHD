// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.adobe.air.wand.message.json;

import com.adobe.air.wand.message.Message;
import com.adobe.air.wand.message.MessageDataArray;
import com.adobe.air.wand.message.MessageDataObject;
import com.adobe.air.wand.message.MessageManager;
import com.adobe.air.wand.message.Notification;
import com.adobe.air.wand.message.Request;
import com.adobe.air.wand.message.Response;
import org.json.JSONObject;

// Referenced classes of package com.adobe.air.wand.message.json:
//            JSONMessageDataArray, JSONMessageDataObject

public class JSONMessageManager extends MessageManager
{

    public JSONMessageManager()
    {
    }

    private static JSONObject createJSONMessage(Message message)
        throws Exception
    {
        message;
        JVM INSTR monitorenter ;
        Object obj;
        JSONObject jsonobject;
        JSONObject jsonobject1;
        obj = message.getHeader().getType();
        jsonobject = new JSONObject();
        jsonobject1 = new JSONObject();
        static class _cls1
        {

            static final int $SwitchMap$com$adobe$air$wand$message$Message$Type[];

            static 
            {
                $SwitchMap$com$adobe$air$wand$message$Message$Type = new int[com.adobe.air.wand.message.Message.Type.values().length];
                try
                {
                    $SwitchMap$com$adobe$air$wand$message$Message$Type[com.adobe.air.wand.message.Message.Type.REQUEST.ordinal()] = 1;
                }
                catch (NoSuchFieldError nosuchfielderror2) { }
                try
                {
                    $SwitchMap$com$adobe$air$wand$message$Message$Type[com.adobe.air.wand.message.Message.Type.RESPONSE.ordinal()] = 2;
                }
                catch (NoSuchFieldError nosuchfielderror1) { }
                try
                {
                    $SwitchMap$com$adobe$air$wand$message$Message$Type[com.adobe.air.wand.message.Message.Type.NOTIFICATION.ordinal()] = 3;
                }
                catch (NoSuchFieldError nosuchfielderror)
                {
                    return;
                }
            }
        }

        _cls1..SwitchMap.com.adobe.air.wand.message.Message.Type[((com.adobe.air.wand.message.Message.Type) (obj)).ordinal()];
        JVM INSTR tableswitch 1 3: default 282
    //                   1 75
    //                   2 185
    //                   3 248;
           goto _L1 _L2 _L3 _L4
_L4:
        break MISSING_BLOCK_LABEL_248;
_L1:
        throw new Exception("Unsupported message type");
        Exception exception;
        exception;
        message;
        JVM INSTR monitorexit ;
        throw exception;
_L2:
        exception = (com.adobe.air.wand.message.Request.Header)message.getHeader();
        com.adobe.air.wand.message.Request.Data data = (com.adobe.air.wand.message.Request.Data)message.getData();
        jsonobject.put("taskID", exception.getTaskID());
        jsonobject1.put("arguments", ((JSONMessageDataArray)data.getArguments()).mJSONArray);
_L5:
        jsonobject.put("title", exception.getTitle());
        jsonobject.put("type", exception.getType().toString());
        jsonobject.put("timestamp", exception.getTimestamp());
        exception = new JSONObject();
        exception.put("header", jsonobject);
        exception.put("data", jsonobject1);
        message;
        JVM INSTR monitorexit ;
        return exception;
_L3:
        exception = (com.adobe.air.wand.message.Response.Header)message.getHeader();
        com.adobe.air.wand.message.Response.Data data1 = (com.adobe.air.wand.message.Response.Data)message.getData();
        jsonobject.put("status", exception.getStatus().toString());
        jsonobject.put("taskID", exception.getTaskID());
        jsonobject1.put("result", ((JSONMessageDataObject)data1.getResult()).mJSONObject);
          goto _L5
        exception = (com.adobe.air.wand.message.Notification.Header)message.getHeader();
        jsonobject1.put("notification", ((JSONMessageDataObject)((com.adobe.air.wand.message.Notification.Data)message.getData()).getNotification()).mJSONObject);
          goto _L5
    }

    private static Message createWandMessage(JSONObject jsonobject)
        throws Exception
    {
        jsonobject;
        JVM INSTR monitorenter ;
        Object obj;
        String s;
        Object obj1;
        String s1;
        long l;
        obj = jsonobject.getJSONObject("header");
        obj1 = jsonobject.getJSONObject("data");
        s = ((JSONObject) (obj)).getString("title");
        s1 = ((JSONObject) (obj)).getString("type");
        l = ((JSONObject) (obj)).getLong("timestamp");
        if (!s1.equals(com.adobe.air.wand.message.Message.Type.REQUEST.toString())) goto _L2; else goto _L1
_L1:
        obj = ((JSONObject) (obj)).getString("taskID");
        obj1 = ((JSONObject) (obj1)).getJSONArray("arguments");
        obj = new Request(new com.adobe.air.wand.message.Request.Header(s, ((String) (obj)), l), new com.adobe.air.wand.message.Request.Data(new JSONMessageDataArray(((org.json.JSONArray) (obj1)))));
_L3:
        jsonobject;
        JVM INSTR monitorexit ;
        return ((Message) (obj));
_L2:
        if (!s1.equals(com.adobe.air.wand.message.Message.Type.RESPONSE.toString()))
        {
            break MISSING_BLOCK_LABEL_232;
        }
        s1 = ((JSONObject) (obj)).getString("taskID");
        obj = ((JSONObject) (obj)).getString("status");
        if (!((String) (obj)).equals(com.adobe.air.wand.message.Response.Status.SUCCESS.toString()))
        {
            break MISSING_BLOCK_LABEL_197;
        }
        obj = com.adobe.air.wand.message.Response.Status.SUCCESS;
_L4:
        obj1 = ((JSONObject) (obj1)).getJSONObject("result");
        obj = new Response(new com.adobe.air.wand.message.Response.Header(s, s1, l, ((com.adobe.air.wand.message.Response.Status) (obj))), new com.adobe.air.wand.message.Response.Data(new JSONMessageDataObject(((JSONObject) (obj1)))));
          goto _L3
label0:
        {
            if (!((String) (obj)).equals(com.adobe.air.wand.message.Response.Status.ERROR.toString()))
            {
                break label0;
            }
            obj = com.adobe.air.wand.message.Response.Status.ERROR;
        }
          goto _L4
        throw new Exception("Unable to fetch Response status");
          goto _L3
        obj;
        jsonobject;
        JVM INSTR monitorexit ;
        throw obj;
label1:
        {
            if (!s1.equals(com.adobe.air.wand.message.Message.Type.NOTIFICATION.toString()))
            {
                break label1;
            }
            obj = ((JSONObject) (obj1)).getJSONObject("notification");
            obj = new Notification(new com.adobe.air.wand.message.Notification.Header(s, l), new com.adobe.air.wand.message.Notification.Data(new JSONMessageDataObject(((JSONObject) (obj)))));
        }
        if (false)
        {
            obj = null;
        }
          goto _L3
    }

    public MessageDataArray createDataArray()
    {
        return new JSONMessageDataArray();
    }

    public MessageDataObject createDataObject()
    {
        return new JSONMessageDataObject();
    }

    public Notification createWandNotification(String s, MessageDataObject messagedataobject)
        throws Exception
    {
        com.adobe.air.wand.message.Notification.Header header = new com.adobe.air.wand.message.Notification.Header(s, System.currentTimeMillis());
        if (messagedataobject == null)
        {
            s = new JSONMessageDataObject();
        } else
        {
            s = messagedataobject;
        }
        return new Notification(header, new com.adobe.air.wand.message.Notification.Data(s));
    }

    public Request createWandRequest(String s, String s1, MessageDataArray messagedataarray)
        throws Exception
    {
        s1 = new com.adobe.air.wand.message.Request.Header(s, s1, System.currentTimeMillis());
        if (messagedataarray == null)
        {
            s = new JSONMessageDataArray();
        } else
        {
            s = messagedataarray;
        }
        return new Request(s1, new com.adobe.air.wand.message.Request.Data(s));
    }

    public Response createWandResponse(String s, String s1, MessageDataObject messagedataobject, com.adobe.air.wand.message.Response.Status status)
        throws Exception
    {
        s1 = new com.adobe.air.wand.message.Response.Header(s, s1, System.currentTimeMillis(), status);
        if (messagedataobject == null)
        {
            s = new JSONMessageDataObject();
        } else
        {
            s = messagedataobject;
        }
        return new Response(s1, new com.adobe.air.wand.message.Response.Data(s));
    }

    public Message deserializeWandMessage(String s)
        throws Exception
    {
        return createWandMessage(new JSONObject(s));
    }

    public String serializeMessage(Message message)
        throws Exception
    {
        return createJSONMessage(message).toString();
    }
}
