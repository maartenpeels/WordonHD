// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.adobe.fre;


// Referenced classes of package com.adobe.fre:
//            FREObject, FRETypeMismatchException, FREInvalidObjectException, FREASErrorException, 
//            FRENoSuchNameException, FREWrongThreadException, FREReadOnlyException

public class FREArray extends FREObject
{

    private FREArray(FREObject.CFREObjectWrapper cfreobjectwrapper)
    {
        super(cfreobjectwrapper);
    }

    protected FREArray(String s, FREObject afreobject[])
        throws FRETypeMismatchException, FREInvalidObjectException, FREASErrorException, FRENoSuchNameException, FREWrongThreadException
    {
        super((new StringBuilder()).append("Vector.<").append(s).append(">").toString(), afreobject);
    }

    protected FREArray(FREObject afreobject[])
        throws FRETypeMismatchException, FREInvalidObjectException, FREASErrorException, FRENoSuchNameException, FREWrongThreadException
    {
        super("Array", afreobject);
    }

    public static FREArray newArray(int i)
        throws FREASErrorException, FREWrongThreadException, IllegalStateException
    {
        Object obj = new FREObject(i);
        obj = new FREArray(new FREObject[] {
            obj
        });
        return ((FREArray) (obj));
        Object obj1;
        obj1;
_L2:
        return null;
        obj1;
        continue; /* Loop/switch isn't completed */
        obj1;
        if (true) goto _L2; else goto _L1
_L1:
    }

    public static FREArray newArray(String s, int i, boolean flag)
        throws FREASErrorException, FRENoSuchNameException, FREWrongThreadException, IllegalStateException
    {
        FREObject freobject;
        FREObject freobject1;
        freobject = new FREObject(i);
        freobject1 = new FREObject(flag);
        s = new FREArray(s, new FREObject[] {
            freobject, freobject1
        });
        return s;
        s;
_L2:
        return null;
        s;
        if (true) goto _L2; else goto _L1
_L1:
    }

    public native long getLength()
        throws FREInvalidObjectException, FREWrongThreadException;

    public native FREObject getObjectAt(long l)
        throws FREInvalidObjectException, IllegalArgumentException, FREWrongThreadException;

    public native void setLength(long l)
        throws FREInvalidObjectException, IllegalArgumentException, FREReadOnlyException, FREWrongThreadException;

    public native void setObjectAt(long l, FREObject freobject)
        throws FREInvalidObjectException, FRETypeMismatchException, FREWrongThreadException;
}
