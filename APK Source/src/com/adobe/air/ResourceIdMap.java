// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.adobe.air;

import java.io.PrintStream;
import java.lang.reflect.Field;
import java.util.Hashtable;

public class ResourceIdMap
{

    private static Hashtable s_resourceMap;
    private Hashtable m_resourceIds;

    public ResourceIdMap(Class class1)
    {
        init(class1);
    }

    public ResourceIdMap(String s)
    {
        try
        {
            init(Class.forName(s));
            return;
        }
        catch (ClassNotFoundException classnotfoundexception)
        {
            System.out.format("Class not found:  %s%n%n", new Object[] {
                s
            });
        }
    }

    private static void gatherResourceInfo(Class class1, Hashtable hashtable)
    {
        Class aclass[];
        int i;
        int l;
        aclass = class1.getClasses();
        l = aclass.length;
        i = 0;
_L2:
        if (i >= l)
        {
            break; /* Loop/switch isn't completed */
        }
        Class class2 = aclass[i];
        class1 = class2.getName();
        int j = class1.lastIndexOf('$') + 1;
        if (j > 0)
        {
            class1 = class1.substring(j);
        }
        Field afield[] = class2.getDeclaredFields();
        int i1 = afield.length;
        Field field;
        Object obj;
        String s;
        for (int k = 0; k >= i1; k++)
        {
            break MISSING_BLOCK_LABEL_190;
        }

        field = afield[k];
        s = String.format("%s.%s", new Object[] {
            class1, field.getName()
        }).intern();
        if (hashtable.containsKey(s))
        {
            System.out.format("Did not add duplicate resource key %s", new Object[] {
                s
            });
            break MISSING_BLOCK_LABEL_203;
        }
        try
        {
            hashtable.put(s, Integer.valueOf(field.getInt(class2)));
        }
        // Misplaced declaration of an exception variable
        catch (Object obj)
        {
            System.out.format("IllegalArgumentException", new Object[0]);
        }
        // Misplaced declaration of an exception variable
        catch (Object obj)
        {
            System.out.format("IllegalAccessException", new Object[0]);
        }
        break MISSING_BLOCK_LABEL_203;
        i++;
        if (true) goto _L2; else goto _L1
_L1:
    }

    private void init(Class class1)
    {
        if (s_resourceMap == null)
        {
            s_resourceMap = new Hashtable();
        }
        if (!s_resourceMap.contains(class1))
        {
            m_resourceIds = new Hashtable();
            gatherResourceInfo(class1, m_resourceIds);
            s_resourceMap.put(class1.getName(), m_resourceIds);
            return;
        } else
        {
            m_resourceIds = (Hashtable)s_resourceMap.get(class1);
            return;
        }
    }

    public int getId(String s)
        throws IllegalArgumentException, android.content.res.Resources.NotFoundException
    {
        if (s == null)
        {
            throw new IllegalArgumentException();
        }
        s = s.intern();
        if (!m_resourceIds.containsKey(s))
        {
            throw new android.content.res.Resources.NotFoundException(s);
        } else
        {
            return ((Integer)m_resourceIds.get(s)).intValue();
        }
    }
}