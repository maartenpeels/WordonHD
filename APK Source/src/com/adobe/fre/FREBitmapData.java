// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.adobe.fre;

import java.nio.ByteBuffer;

// Referenced classes of package com.adobe.fre:
//            FREObject, FRETypeMismatchException, FREInvalidObjectException, FREASErrorException, 
//            FRENoSuchNameException, FREWrongThreadException

public class FREBitmapData extends FREObject
{

    private long m_dataPointer;

    private FREBitmapData(FREObject.CFREObjectWrapper cfreobjectwrapper)
    {
        super(cfreobjectwrapper);
    }

    protected FREBitmapData(FREObject afreobject[])
        throws FRETypeMismatchException, FREInvalidObjectException, FREASErrorException, FRENoSuchNameException, FREWrongThreadException, IllegalStateException
    {
        super("flash.display.BitmapData", afreobject);
    }

    public static FREBitmapData newBitmapData(int i, int j, boolean flag, Byte abyte[])
        throws FREASErrorException, FREWrongThreadException, IllegalArgumentException
    {
        FREObject freobject;
        FREObject freobject1;
        FREObject freobject2;
        if (abyte.length != 4)
        {
            throw new IllegalArgumentException("fillColor has wrong length");
        }
        freobject = new FREObject(i);
        freobject1 = new FREObject(j);
        freobject2 = new FREObject(flag);
        int k = 0;
        j = -1;
        for (i = 0; i < 4; i++)
        {
            k |= abyte[i].byteValue() << (3 - i) * 8 & j;
            j >>>= 8;
        }

        abyte = new FREObject(k);
        abyte = new FREBitmapData(new FREObject[] {
            freobject, freobject1, freobject2, abyte
        });
        return abyte;
        abyte;
_L2:
        return null;
        abyte;
        continue; /* Loop/switch isn't completed */
        abyte;
        if (true) goto _L2; else goto _L1
_L1:
    }

    public native void acquire()
        throws FREInvalidObjectException, FREWrongThreadException, IllegalStateException;

    public native ByteBuffer getBits()
        throws FREInvalidObjectException, FREWrongThreadException, IllegalStateException;

    public native int getHeight()
        throws FREInvalidObjectException, FREWrongThreadException, IllegalStateException;

    public native int getLineStride32()
        throws FREInvalidObjectException, FREWrongThreadException, IllegalStateException;

    public native int getWidth()
        throws FREInvalidObjectException, FREWrongThreadException, IllegalStateException;

    public native boolean hasAlpha()
        throws FREInvalidObjectException, FREWrongThreadException, IllegalStateException;

    public native void invalidateRect(int i, int j, int k, int l)
        throws FREInvalidObjectException, FREWrongThreadException, IllegalStateException, IllegalArgumentException;

    public native boolean isInvertedY()
        throws FREInvalidObjectException, FREWrongThreadException, IllegalStateException;

    public native boolean isPremultiplied()
        throws FREInvalidObjectException, FREWrongThreadException, IllegalStateException;

    public native void release()
        throws FREInvalidObjectException, FREWrongThreadException, IllegalStateException;
}