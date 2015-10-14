// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.tapjoy.extensions;

import android.app.Activity;
import android.content.Context;
import android.util.Log;
import android.widget.Toast;
import com.adobe.fre.FREContext;
import com.adobe.fre.FREInvalidObjectException;
import com.adobe.fre.FREObject;
import com.adobe.fre.FRETypeMismatchException;
import com.adobe.fre.FREWrongThreadException;
import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Hashtable;
import java.util.Iterator;
import java.util.Set;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public class ExtensionUtils
{

    private static String CONNECT_FLAG_DICTIONARY_NAME = "connectFlags";
    public static final FREObject FRE_FALSE = initBool(Boolean.valueOf(false));
    public static final FREObject FRE_TRUE = initBool(Boolean.valueOf(true));
    private static Hashtable actionScriptDictionaryRefs = new Hashtable();
    public static Hashtable eventRequestMap = null;
    private static Activity m_Activity = null;
    private static Context m_Context = null;
    private static FREContext m_FREContext = null;
    private static Boolean m_bDebug = Boolean.valueOf(false);
    private static HashMap m_eventGuidMap = null;

    public ExtensionUtils()
    {
    }

    public static void addEventGuid(String s, String s1)
    {
        if (m_eventGuidMap != null)
        {
            m_eventGuidMap.put(s, s1);
        }
    }

    public static boolean checkIsBoolean(FREObject freobject)
    {
        try
        {
            freobject.getAsBool();
        }
        // Misplaced declaration of an exception variable
        catch (FREObject freobject)
        {
            return false;
        }
        // Misplaced declaration of an exception variable
        catch (FREObject freobject)
        {
            return false;
        }
        // Misplaced declaration of an exception variable
        catch (FREObject freobject)
        {
            return false;
        }
        return true;
    }

    public static boolean checkIsDouble(FREObject freobject)
    {
        try
        {
            freobject.getAsDouble();
        }
        // Misplaced declaration of an exception variable
        catch (FREObject freobject)
        {
            return false;
        }
        // Misplaced declaration of an exception variable
        catch (FREObject freobject)
        {
            return false;
        }
        // Misplaced declaration of an exception variable
        catch (FREObject freobject)
        {
            return false;
        }
        return true;
    }

    public static boolean checkIsInt(FREObject freobject)
    {
        try
        {
            freobject.getAsInt();
        }
        // Misplaced declaration of an exception variable
        catch (FREObject freobject)
        {
            return false;
        }
        // Misplaced declaration of an exception variable
        catch (FREObject freobject)
        {
            return false;
        }
        // Misplaced declaration of an exception variable
        catch (FREObject freobject)
        {
            return false;
        }
        return true;
    }

    public static boolean checkIsString(FREObject freobject)
    {
        try
        {
            freobject.getAsString();
        }
        // Misplaced declaration of an exception variable
        catch (FREObject freobject)
        {
            return false;
        }
        // Misplaced declaration of an exception variable
        catch (FREObject freobject)
        {
            return false;
        }
        // Misplaced declaration of an exception variable
        catch (FREObject freobject)
        {
            return false;
        }
        return true;
    }

    public static void debug(String s)
    {
        if (m_bDebug.booleanValue() && m_FREContext != null)
        {
            m_FREContext.dispatchStatusEventAsync("TRACE", s);
        }
    }

    public static void enableDebug()
    {
        m_bDebug = Boolean.valueOf(true);
    }

    public static String getAndroidGuid(String s)
    {
        java.util.Map.Entry entry = null;
        String s1 = null;
        if (m_eventGuidMap != null)
        {
            Iterator iterator = m_eventGuidMap.entrySet().iterator();
            do
            {
                entry = s1;
                if (!iterator.hasNext())
                {
                    break;
                }
                entry = (java.util.Map.Entry)iterator.next();
                if (((String)entry.getValue()).equals(s))
                {
                    s1 = (String)entry.getKey();
                }
            } while (true);
        }
        return entry;
    }

    public static boolean getBoolean(FREObject freobject)
    {
        boolean flag = freobject.getAsBool();
        return flag;
        freobject;
        freobject.printStackTrace();
_L2:
        return false;
        freobject;
        freobject.printStackTrace();
        continue; /* Loop/switch isn't completed */
        freobject;
        freobject.printStackTrace();
        if (true) goto _L2; else goto _L1
_L1:
    }

    public static Hashtable getConnectFlags()
    {
        return getReferenceDictionary(CONNECT_FLAG_DICTIONARY_NAME, false);
    }

    public static Context getContext()
    {
        return m_Context;
    }

    public static double getDouble(FREObject freobject)
    {
        double d = freobject.getAsDouble();
        return d;
        freobject;
        freobject.printStackTrace();
_L2:
        return 0.0D;
        freobject;
        freobject.printStackTrace();
        continue; /* Loop/switch isn't completed */
        freobject;
        freobject.printStackTrace();
        if (true) goto _L2; else goto _L1
_L1:
    }

    public static String getEventGuid(String s)
    {
        if (m_eventGuidMap != null)
        {
            return (String)m_eventGuidMap.get(s);
        } else
        {
            return null;
        }
    }

    public static FREObject getFREBool(Boolean boolean1)
    {
        if (boolean1.booleanValue())
        {
            return FRE_TRUE;
        } else
        {
            return FRE_FALSE;
        }
    }

    public static FREObject getFREObject(double d)
    {
        FREObject freobject;
        try
        {
            freobject = FREObject.newObject(d);
        }
        catch (FREWrongThreadException frewrongthreadexception)
        {
            frewrongthreadexception.printStackTrace();
            return null;
        }
        return freobject;
    }

    public static FREObject getFREObject(float f)
    {
        return getFREObject(f);
    }

    public static FREObject getFREObject(int i)
    {
        FREObject freobject;
        try
        {
            freobject = FREObject.newObject(i);
        }
        catch (FREWrongThreadException frewrongthreadexception)
        {
            frewrongthreadexception.printStackTrace();
            return null;
        }
        return freobject;
    }

    public static FREObject getFREObject(String s)
    {
        try
        {
            s = FREObject.newObject(s);
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            s.printStackTrace();
            return null;
        }
        return s;
    }

    public static float getFloat(FREObject freobject)
    {
        return (float)getDouble(freobject);
    }

    public static int getInt(FREObject freobject)
    {
        int i = freobject.getAsInt();
        return i;
        freobject;
        freobject.printStackTrace();
_L2:
        return 0;
        freobject;
        freobject.printStackTrace();
        continue; /* Loop/switch isn't completed */
        freobject;
        freobject.printStackTrace();
        if (true) goto _L2; else goto _L1
_L1:
    }

    public static Hashtable getReferenceDictionary(String s)
    {
        return getReferenceDictionary(s, true);
    }

    public static Hashtable getReferenceDictionary(String s, boolean flag)
    {
        Hashtable hashtable1 = (Hashtable)actionScriptDictionaryRefs.get(s);
        Hashtable hashtable = hashtable1;
        if (hashtable1 == null)
        {
            hashtable = hashtable1;
            if (flag)
            {
                hashtable = new Hashtable();
                actionScriptDictionaryRefs.put(s, hashtable);
            }
        }
        return hashtable;
    }

    public static String getString(FREObject freobject)
    {
        freobject = freobject.getAsString();
        return freobject;
        freobject;
        freobject.printStackTrace();
_L2:
        return "";
        freobject;
        freobject.printStackTrace();
        continue; /* Loop/switch isn't completed */
        freobject;
        freobject.printStackTrace();
        if (true) goto _L2; else goto _L1
_L1:
    }

    public static void init(FREContext frecontext)
    {
        if (frecontext != null)
        {
            m_FREContext = frecontext;
            m_Activity = m_FREContext.getActivity();
            m_Context = m_Activity.getApplicationContext();
            m_eventGuidMap = new HashMap();
        }
    }

    private static FREObject initBool(Boolean boolean1)
    {
        try
        {
            boolean1 = FREObject.newObject(boolean1.booleanValue());
        }
        // Misplaced declaration of an exception variable
        catch (Boolean boolean1)
        {
            boolean1.printStackTrace();
            return null;
        }
        return boolean1;
    }

    public static void setDictionaryInDictionary(String s, String s1, String s2)
    {
        Hashtable hashtable1 = (Hashtable)actionScriptDictionaryRefs.get(s2);
        Hashtable hashtable = hashtable1;
        if (hashtable1 == null)
        {
            hashtable = new Hashtable();
            actionScriptDictionaryRefs.put(s2, hashtable);
        }
        s1 = (Hashtable)actionScriptDictionaryRefs.get(s1);
        if (s1 == null)
        {
            return;
        } else
        {
            hashtable.put(s, s1);
            return;
        }
    }

    public static void setKeyValueInDictionary(String s, double d, String s1)
    {
        getReferenceDictionary(s1).put(s, Double.valueOf(d));
    }

    public static void setKeyValueInDictionary(String s, int i, String s1)
    {
        getReferenceDictionary(s1).put(s, Integer.valueOf(i));
    }

    public static void setKeyValueInDictionary(String s, FREObject freobject, String s1)
    {
        if (checkIsString(freobject))
        {
            setKeyValueInDictionary(s, getString(freobject), s1);
            return;
        }
        if (checkIsInt(freobject))
        {
            setKeyValueInDictionary(s, getInt(freobject), s1);
            return;
        }
        if (checkIsDouble(freobject))
        {
            setKeyValueInDictionary(s, getDouble(freobject), s1);
            return;
        }
        if (checkIsBoolean(freobject))
        {
            setKeyValueInDictionary(s, getBoolean(freobject), s1);
            return;
        } else
        {
            Log.e("Tapjoy ExtensionUtils", "Type was not determined in Actionscript bridge. Failed to set key.");
            return;
        }
    }

    public static void setKeyValueInDictionary(String s, String s1, String s2)
    {
        getReferenceDictionary(s2).put(s, s1);
    }

    public static void setKeyValueInDictionary(String s, boolean flag, String s1)
    {
        getReferenceDictionary(s1).put(s, Boolean.valueOf(flag));
    }

    public static String toJSON(Object obj)
    {
        JSONArray jsonarray;
        if (obj.getClass() != java/util/ArrayList)
        {
            break MISSING_BLOCK_LABEL_64;
        }
        jsonarray = new JSONArray();
        obj = (ArrayList)obj;
        Field afield[];
        JSONObject jsonobject;
        Object obj1;
        Class class1;
        int i;
        i = 0;
        do
        {
            try
            {
                if (i >= ((ArrayList) (obj)).size())
                {
                    break;
                }
                jsonarray.put(toJSON(((ArrayList) (obj)).get(i)));
            }
            // Misplaced declaration of an exception variable
            catch (Object obj)
            {
                ((JSONException) (obj)).printStackTrace();
                return "";
            }
            i++;
        } while (true);
        return jsonarray.toString(2);
        afield = obj.getClass().getFields();
        jsonobject = new JSONObject();
        i = 0;
_L2:
        if (i >= afield.length)
        {
            break MISSING_BLOCK_LABEL_284;
        }
        obj1 = afield[i].getName();
        class1 = afield[i].getType();
        if (class1 != java/lang/String)
        {
            break MISSING_BLOCK_LABEL_134;
        }
        jsonobject.put(((String) (obj1)), (String)afield[i].get(obj));
        break MISSING_BLOCK_LABEL_292;
        if (class1 == Integer.TYPE)
        {
            jsonobject.put(((String) (obj1)), afield[i].getInt(obj));
            break MISSING_BLOCK_LABEL_292;
        }
        break MISSING_BLOCK_LABEL_175;
        obj1;
        ((JSONException) (obj1)).printStackTrace();
        break MISSING_BLOCK_LABEL_292;
        if (class1 == Float.TYPE)
        {
            jsonobject.put(((String) (obj1)), afield[i].getFloat(obj));
            break MISSING_BLOCK_LABEL_292;
        }
        break MISSING_BLOCK_LABEL_209;
        obj1;
        ((IllegalAccessException) (obj1)).printStackTrace();
        break MISSING_BLOCK_LABEL_292;
        if (class1 == Double.TYPE)
        {
            jsonobject.put(((String) (obj1)), afield[i].getDouble(obj));
            break MISSING_BLOCK_LABEL_292;
        }
        if (class1 == Long.TYPE)
        {
            jsonobject.put(((String) (obj1)), afield[i].getLong(obj));
            break MISSING_BLOCK_LABEL_292;
        }
        if (class1 == Boolean.TYPE)
        {
            jsonobject.put(((String) (obj1)), afield[i].getBoolean(obj));
        }
        break MISSING_BLOCK_LABEL_292;
        obj = jsonobject.toString(2);
        return ((String) (obj));
        i++;
        if (true) goto _L2; else goto _L1
_L1:
    }

    public static void toastDebug(String s)
    {
        if (m_bDebug.booleanValue() && getContext() != null)
        {
            Toast.makeText(getContext(), s, 0).show();
        }
    }

}
