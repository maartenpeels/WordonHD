// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.urbanairship;

import android.content.Context;
import android.content.res.AssetManager;
import android.content.res.Resources;
import java.io.IOException;
import java.lang.reflect.Field;
import java.util.Arrays;
import java.util.List;
import java.util.Properties;

// Referenced classes of package com.urbanairship:
//            ConstantClass, Logger, PropertyName

public abstract class Options
{

    public Options()
    {
    }

    private int a(Field field, String s)
    {
        int i;
        try
        {
            i = Integer.valueOf(s).intValue();
        }
        catch (NumberFormatException numberformatexception)
        {
            ConstantClass constantclass = (ConstantClass)field.getAnnotation(com/urbanairship/ConstantClass);
            if (constantclass == null)
            {
                throw new IllegalArgumentException((new StringBuilder("The field '")).append(field.getName()).append("' has a type mismatch or missing annotation.").toString());
            }
            Field afield[] = Class.forName(constantclass.a()).getDeclaredFields();
            int k = afield.length;
            for (int j = 0; j < k; j++)
            {
                Field field1 = afield[j];
                if (field1.getName().equalsIgnoreCase(s))
                {
                    try
                    {
                        j = field1.getInt(this);
                    }
                    // Misplaced declaration of an exception variable
                    catch (String s)
                    {
                        throw new IllegalArgumentException((new StringBuilder("The field '")).append(field.getName()).append("' is incompatible with specified class").toString(), s);
                    }
                    return j;
                }
            }

            throw new IllegalArgumentException((new StringBuilder("Unable to match class for field '")).append(field.getName()).append("'").toString());
        }
        return i;
    }

    public final void b(Context context)
    {
        String s;
        s = f();
        context = context.getResources().getAssets();
        if (Arrays.asList(context.list("")).contains(s)) goto _L2; else goto _L1
_L1:
        Logger.b((new StringBuilder("Options - Couldn't find ")).append(s).toString());
_L11:
        return;
        context;
        Logger.a(context);
        return;
_L2:
        Field field;
        int i;
        Properties properties = new Properties();
        Field afield[];
        PropertyName propertyname;
        int j;
        try
        {
            properties.load(context.open(s));
            afield = getClass().getDeclaredFields();
            j = afield.length;
        }
        // Misplaced declaration of an exception variable
        catch (Context context)
        {
            Logger.c((new StringBuilder("Error loading properties file ")).append(s).toString(), context);
            return;
        }
        i = 0;
_L9:
        if (i >= j)
        {
            continue; /* Loop/switch isn't completed */
        }
        field = afield[i];
        if (com/urbanairship/Options.isAssignableFrom(field.getType())) goto _L4; else goto _L3
_L3:
        propertyname = (PropertyName)field.getAnnotation(com/urbanairship/PropertyName);
        if (propertyname == null) goto _L6; else goto _L5
_L5:
        context = properties.getProperty(propertyname.a());
        Logger.b((new StringBuilder("Found PropertyAnnotation for ")).append(propertyname.a()).append(" matching ").append(field.getName()).toString());
_L7:
        if (context == null)
        {
            break; /* Loop/switch isn't completed */
        }
        if (field.getType() == Boolean.TYPE || field.getType() == java/lang/Boolean)
        {
            field.set(this, Boolean.valueOf(context));
            break; /* Loop/switch isn't completed */
        }
        if (field.getType() == Integer.TYPE || field.getType() == java/lang/Integer)
        {
            field.set(this, Integer.valueOf(a(field, context)));
            break; /* Loop/switch isn't completed */
        }
        break MISSING_BLOCK_LABEL_318;
        context;
        Logger.c((new StringBuilder("Unable to set field '")).append(field.getName()).append("' because the field is not visible.").toString(), context);
        break; /* Loop/switch isn't completed */
        if (field.getType() == Long.TYPE || field.getType() == java/lang/Long)
        {
            field.set(this, Long.valueOf(context));
            break; /* Loop/switch isn't completed */
        }
        break MISSING_BLOCK_LABEL_385;
        context;
        Logger.c((new StringBuilder("Unable to set field '")).append(field.getName()).append("' due invalid configuration value.").toString(), context);
        break; /* Loop/switch isn't completed */
        field.set(this, context.trim());
        break; /* Loop/switch isn't completed */
        context;
        Logger.c((new StringBuilder("Unable to set field '")).append(field.getName()).append("' due invalid configuration value.").toString(), context);
        break; /* Loop/switch isn't completed */
_L6:
        context = null;
        if (true) goto _L7; else goto _L4
_L4:
        i++;
        if (true) goto _L9; else goto _L8
_L8:
        if (true) goto _L11; else goto _L10
_L10:
    }

    public abstract String f();
}
