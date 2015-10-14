// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.facebook;

import android.content.Context;
import android.content.SharedPreferences;
import android.os.Bundle;
import com.facebook.internal.Logger;
import com.facebook.internal.Utility;
import com.facebook.internal.Validate;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

// Referenced classes of package com.facebook:
//            TokenCachingStrategy, LoggingBehavior

public class SharedPreferencesTokenCachingStrategy extends TokenCachingStrategy
{

    private static final String DEFAULT_CACHE_KEY = "com.facebook.SharedPreferencesTokenCachingStrategy.DEFAULT_KEY";
    private static final String JSON_VALUE = "value";
    private static final String JSON_VALUE_ENUM_TYPE = "enumType";
    private static final String JSON_VALUE_TYPE = "valueType";
    private static final String TAG = com/facebook/SharedPreferencesTokenCachingStrategy.getSimpleName();
    private static final String TYPE_BOOLEAN = "bool";
    private static final String TYPE_BOOLEAN_ARRAY = "bool[]";
    private static final String TYPE_BYTE = "byte";
    private static final String TYPE_BYTE_ARRAY = "byte[]";
    private static final String TYPE_CHAR = "char";
    private static final String TYPE_CHAR_ARRAY = "char[]";
    private static final String TYPE_DOUBLE = "double";
    private static final String TYPE_DOUBLE_ARRAY = "double[]";
    private static final String TYPE_ENUM = "enum";
    private static final String TYPE_FLOAT = "float";
    private static final String TYPE_FLOAT_ARRAY = "float[]";
    private static final String TYPE_INTEGER = "int";
    private static final String TYPE_INTEGER_ARRAY = "int[]";
    private static final String TYPE_LONG = "long";
    private static final String TYPE_LONG_ARRAY = "long[]";
    private static final String TYPE_SHORT = "short";
    private static final String TYPE_SHORT_ARRAY = "short[]";
    private static final String TYPE_STRING = "string";
    private static final String TYPE_STRING_LIST = "stringList";
    private SharedPreferences cache;
    private String cacheKey;

    public SharedPreferencesTokenCachingStrategy(Context context)
    {
        this(context, null);
    }

    public SharedPreferencesTokenCachingStrategy(Context context, String s)
    {
        Validate.notNull(context, "context");
        if (Utility.isNullOrEmpty(s))
        {
            s = "com.facebook.SharedPreferencesTokenCachingStrategy.DEFAULT_KEY";
        }
        cacheKey = s;
        s = context.getApplicationContext();
        if (s != null)
        {
            context = s;
        }
        cache = context.getSharedPreferences(cacheKey, 0);
    }

    private void deserializeKey(String s, Bundle bundle)
    {
        Object obj;
        Object obj1;
        obj = new JSONObject(cache.getString(s, "{}"));
        obj1 = ((JSONObject) (obj)).getString("valueType");
        if (!((String) (obj1)).equals("bool")) goto _L2; else goto _L1
_L1:
        bundle.putBoolean(s, ((JSONObject) (obj)).getBoolean("value"));
_L4:
        return;
_L2:
        if (((String) (obj1)).equals("bool[]"))
        {
            obj = ((JSONObject) (obj)).getJSONArray("value");
            obj1 = new boolean[((JSONArray) (obj)).length()];
            for (int i = 0; i < obj1.length; i++)
            {
                obj1[i] = ((JSONArray) (obj)).getBoolean(i);
            }

            bundle.putBooleanArray(s, ((boolean []) (obj1)));
            return;
        }
        if (((String) (obj1)).equals("byte"))
        {
            bundle.putByte(s, (byte)((JSONObject) (obj)).getInt("value"));
            return;
        }
        if (((String) (obj1)).equals("byte[]"))
        {
            obj = ((JSONObject) (obj)).getJSONArray("value");
            obj1 = new byte[((JSONArray) (obj)).length()];
            for (int j = 0; j < obj1.length; j++)
            {
                obj1[j] = (byte)((JSONArray) (obj)).getInt(j);
            }

            bundle.putByteArray(s, ((byte []) (obj1)));
            return;
        }
        if (((String) (obj1)).equals("short"))
        {
            bundle.putShort(s, (short)((JSONObject) (obj)).getInt("value"));
            return;
        }
        if (((String) (obj1)).equals("short[]"))
        {
            obj = ((JSONObject) (obj)).getJSONArray("value");
            obj1 = new short[((JSONArray) (obj)).length()];
            for (int k = 0; k < obj1.length; k++)
            {
                obj1[k] = (short)((JSONArray) (obj)).getInt(k);
            }

            bundle.putShortArray(s, ((short []) (obj1)));
            return;
        }
        if (((String) (obj1)).equals("int"))
        {
            bundle.putInt(s, ((JSONObject) (obj)).getInt("value"));
            return;
        }
        if (((String) (obj1)).equals("int[]"))
        {
            obj = ((JSONObject) (obj)).getJSONArray("value");
            obj1 = new int[((JSONArray) (obj)).length()];
            for (int l = 0; l < obj1.length; l++)
            {
                obj1[l] = ((JSONArray) (obj)).getInt(l);
            }

            bundle.putIntArray(s, ((int []) (obj1)));
            return;
        }
        if (((String) (obj1)).equals("long"))
        {
            bundle.putLong(s, ((JSONObject) (obj)).getLong("value"));
            return;
        }
        if (((String) (obj1)).equals("long[]"))
        {
            obj = ((JSONObject) (obj)).getJSONArray("value");
            obj1 = new long[((JSONArray) (obj)).length()];
            for (int i1 = 0; i1 < obj1.length; i1++)
            {
                obj1[i1] = ((JSONArray) (obj)).getLong(i1);
            }

            bundle.putLongArray(s, ((long []) (obj1)));
            return;
        }
        if (((String) (obj1)).equals("float"))
        {
            bundle.putFloat(s, (float)((JSONObject) (obj)).getDouble("value"));
            return;
        }
        if (((String) (obj1)).equals("float[]"))
        {
            obj = ((JSONObject) (obj)).getJSONArray("value");
            obj1 = new float[((JSONArray) (obj)).length()];
            for (int j1 = 0; j1 < obj1.length; j1++)
            {
                obj1[j1] = (float)((JSONArray) (obj)).getDouble(j1);
            }

            bundle.putFloatArray(s, ((float []) (obj1)));
            return;
        }
        if (((String) (obj1)).equals("double"))
        {
            bundle.putDouble(s, ((JSONObject) (obj)).getDouble("value"));
            return;
        }
        if (((String) (obj1)).equals("double[]"))
        {
            obj = ((JSONObject) (obj)).getJSONArray("value");
            obj1 = new double[((JSONArray) (obj)).length()];
            for (int k1 = 0; k1 < obj1.length; k1++)
            {
                obj1[k1] = ((JSONArray) (obj)).getDouble(k1);
            }

            bundle.putDoubleArray(s, ((double []) (obj1)));
            return;
        }
        if (!((String) (obj1)).equals("char"))
        {
            break; /* Loop/switch isn't completed */
        }
        obj = ((JSONObject) (obj)).getString("value");
        if (obj != null && ((String) (obj)).length() == 1)
        {
            bundle.putChar(s, ((String) (obj)).charAt(0));
            return;
        }
        if (true) goto _L4; else goto _L3
_L3:
        if (((String) (obj1)).equals("char[]"))
        {
            obj = ((JSONObject) (obj)).getJSONArray("value");
            obj1 = new char[((JSONArray) (obj)).length()];
            for (int l1 = 0; l1 < obj1.length; l1++)
            {
                String s1 = ((JSONArray) (obj)).getString(l1);
                if (s1 != null && s1.length() == 1)
                {
                    obj1[l1] = s1.charAt(0);
                }
            }

            bundle.putCharArray(s, ((char []) (obj1)));
            return;
        }
        if (((String) (obj1)).equals("string"))
        {
            bundle.putString(s, ((JSONObject) (obj)).getString("value"));
            return;
        }
        if (((String) (obj1)).equals("stringList"))
        {
            obj1 = ((JSONObject) (obj)).getJSONArray("value");
            int j2 = ((JSONArray) (obj1)).length();
            ArrayList arraylist = new ArrayList(j2);
            int i2 = 0;
            while (i2 < j2) 
            {
                obj = ((JSONArray) (obj1)).get(i2);
                if (obj == JSONObject.NULL)
                {
                    obj = null;
                } else
                {
                    obj = (String)obj;
                }
                arraylist.add(i2, obj);
                i2++;
            }
            bundle.putStringArrayList(s, arraylist);
            return;
        }
        if (((String) (obj1)).equals("enum"))
        {
            try
            {
                bundle.putSerializable(s, Enum.valueOf(Class.forName(((JSONObject) (obj)).getString("enumType")), ((JSONObject) (obj)).getString("value")));
                return;
            }
            // Misplaced declaration of an exception variable
            catch (String s)
            {
                return;
            }
            // Misplaced declaration of an exception variable
            catch (String s)
            {
                return;
            }
        }
        if (true) goto _L4; else goto _L5
_L5:
    }

    private void serializeKey(String s, Bundle bundle, android.content.SharedPreferences.Editor editor)
    {
        int i;
        int j;
        int k;
        boolean flag;
        boolean flag1;
        boolean flag2;
        boolean flag3;
        boolean flag4;
        j = 0;
        k = 0;
        flag = false;
        flag1 = false;
        flag2 = false;
        flag3 = false;
        flag4 = false;
        i = 0;
        bundle = ((Bundle) (bundle.get(s)));
        if (bundle != null) goto _L2; else goto _L1
_L1:
        return;
_L2:
        JSONArray jsonarray;
        JSONObject jsonobject;
        jsonobject = new JSONObject();
        if (!(bundle instanceof Byte))
        {
            break; /* Loop/switch isn't completed */
        }
        jsonobject.put("value", ((Byte)bundle).intValue());
        bundle = "byte";
        jsonarray = null;
_L4:
        if (bundle != null)
        {
            jsonobject.put("valueType", bundle);
            if (jsonarray != null)
            {
                jsonobject.putOpt("value", jsonarray);
            }
            editor.putString(s, jsonobject.toString());
            return;
        }
        if (true) goto _L1; else goto _L3
_L3:
        if (bundle instanceof Short)
        {
            jsonobject.put("value", ((Short)bundle).intValue());
            bundle = "short";
            jsonarray = null;
        } else
        if (bundle instanceof Integer)
        {
            jsonobject.put("value", ((Integer)bundle).intValue());
            bundle = "int";
            jsonarray = null;
        } else
        if (bundle instanceof Long)
        {
            jsonobject.put("value", ((Long)bundle).longValue());
            bundle = "long";
            jsonarray = null;
        } else
        if (bundle instanceof Float)
        {
            jsonobject.put("value", ((Float)bundle).doubleValue());
            bundle = "float";
            jsonarray = null;
        } else
        if (bundle instanceof Double)
        {
            jsonobject.put("value", ((Double)bundle).doubleValue());
            bundle = "double";
            jsonarray = null;
        } else
        if (bundle instanceof Boolean)
        {
            jsonobject.put("value", ((Boolean)bundle).booleanValue());
            bundle = "bool";
            jsonarray = null;
        } else
        if (bundle instanceof Character)
        {
            jsonobject.put("value", bundle.toString());
            bundle = "char";
            jsonarray = null;
        } else
        if (bundle instanceof String)
        {
            jsonobject.put("value", (String)bundle);
            bundle = "string";
            jsonarray = null;
        } else
        {
label0:
            {
                if (!(bundle instanceof Enum))
                {
                    break label0;
                }
                jsonobject.put("value", bundle.toString());
                jsonobject.put("enumType", bundle.getClass().getName());
                bundle = "enum";
                jsonarray = null;
            }
        }
          goto _L4
        JSONArray jsonarray1;
        String s1;
        double ad[];
        jsonarray1 = new JSONArray();
        if (!(bundle instanceof byte[]))
        {
            break MISSING_BLOCK_LABEL_464;
        }
        s1 = "byte[]";
        ad = (byte[])bundle;
        j = ad.length;
_L6:
        jsonarray = jsonarray1;
        bundle = s1;
        if (i >= j) goto _L4; else goto _L5
_L5:
        jsonarray1.put(ad[i]);
        i++;
          goto _L6
        if (!(bundle instanceof short[]))
        {
            break MISSING_BLOCK_LABEL_524;
        }
        s1 = "short[]";
        ad = (short[])bundle;
        k = ad.length;
        i = j;
_L8:
        jsonarray = jsonarray1;
        bundle = s1;
        if (i >= k) goto _L4; else goto _L7
_L7:
        jsonarray1.put(ad[i]);
        i++;
          goto _L8
        if (!(bundle instanceof int[]))
        {
            break MISSING_BLOCK_LABEL_584;
        }
        s1 = "int[]";
        ad = (int[])bundle;
        j = ad.length;
        i = k;
_L10:
        jsonarray = jsonarray1;
        bundle = s1;
        if (i >= j) goto _L4; else goto _L9
_L9:
        jsonarray1.put(ad[i]);
        i++;
          goto _L10
        if (!(bundle instanceof long[]))
        {
            break MISSING_BLOCK_LABEL_644;
        }
        s1 = "long[]";
        ad = (long[])bundle;
        j = ad.length;
        i = ((flag) ? 1 : 0);
_L12:
        jsonarray = jsonarray1;
        bundle = s1;
        if (i >= j) goto _L4; else goto _L11
_L11:
        jsonarray1.put(ad[i]);
        i++;
          goto _L12
        if (!(bundle instanceof float[]))
        {
            break MISSING_BLOCK_LABEL_705;
        }
        s1 = "float[]";
        ad = (float[])bundle;
        j = ad.length;
        i = ((flag1) ? 1 : 0);
_L14:
        jsonarray = jsonarray1;
        bundle = s1;
        if (i >= j) goto _L4; else goto _L13
_L13:
        jsonarray1.put(ad[i]);
        i++;
          goto _L14
        if (!(bundle instanceof double[]))
        {
            break MISSING_BLOCK_LABEL_765;
        }
        s1 = "double[]";
        ad = (double[])bundle;
        j = ad.length;
        i = ((flag2) ? 1 : 0);
_L16:
        jsonarray = jsonarray1;
        bundle = s1;
        if (i >= j) goto _L4; else goto _L15
_L15:
        jsonarray1.put(ad[i]);
        i++;
          goto _L16
        if (!(bundle instanceof boolean[]))
        {
            break MISSING_BLOCK_LABEL_825;
        }
        s1 = "bool[]";
        ad = (boolean[])bundle;
        j = ad.length;
        i = ((flag3) ? 1 : 0);
_L18:
        jsonarray = jsonarray1;
        bundle = s1;
        if (i >= j) goto _L4; else goto _L17
_L17:
        jsonarray1.put(ad[i]);
        i++;
          goto _L18
        if (!(bundle instanceof char[]))
        {
            break MISSING_BLOCK_LABEL_888;
        }
        s1 = "char[]";
        ad = (char[])bundle;
        j = ad.length;
        i = ((flag4) ? 1 : 0);
_L20:
        jsonarray = jsonarray1;
        bundle = s1;
        if (i >= j) goto _L4; else goto _L19
_L19:
        jsonarray1.put(String.valueOf(ad[i]));
        i++;
          goto _L20
        Iterator iterator;
        if (!(bundle instanceof List))
        {
            break MISSING_BLOCK_LABEL_959;
        }
        s1 = "stringList";
        iterator = ((List)bundle).iterator();
_L22:
        jsonarray = jsonarray1;
        bundle = s1;
        if (!iterator.hasNext()) goto _L4; else goto _L21
_L21:
        bundle = (String)iterator.next();
        if (bundle == null)
        {
            bundle = ((Bundle) (JSONObject.NULL));
        }
        jsonarray1.put(bundle);
          goto _L22
        jsonarray = null;
        bundle = null;
          goto _L4
    }

    public void clear()
    {
        cache.edit().clear().apply();
    }

    public Bundle load()
    {
        Object obj = new Bundle();
        Iterator iterator = cache.getAll().keySet().iterator();
        do
        {
            if (!iterator.hasNext())
            {
                break;
            }
            String s = (String)iterator.next();
            try
            {
                deserializeKey(s, ((Bundle) (obj)));
            }
            // Misplaced declaration of an exception variable
            catch (Object obj)
            {
                Logger.log(LoggingBehavior.CACHE, 5, TAG, (new StringBuilder("Error reading cached value for key: '")).append(s).append("' -- ").append(obj).toString());
                return null;
            }
        } while (true);
        return ((Bundle) (obj));
    }

    public void save(Bundle bundle)
    {
        Validate.notNull(bundle, "bundle");
        android.content.SharedPreferences.Editor editor = cache.edit();
        Iterator iterator = bundle.keySet().iterator();
        do
        {
            if (!iterator.hasNext())
            {
                break;
            }
            String s = (String)iterator.next();
            try
            {
                serializeKey(s, bundle, editor);
            }
            // Misplaced declaration of an exception variable
            catch (Bundle bundle)
            {
                Logger.log(LoggingBehavior.CACHE, 5, TAG, (new StringBuilder("Error processing value for key: '")).append(s).append("' -- ").append(bundle).toString());
                return;
            }
        } while (true);
        editor.apply();
    }

}
