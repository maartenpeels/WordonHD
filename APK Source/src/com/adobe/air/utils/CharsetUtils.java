// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.adobe.air.utils;

import java.nio.ByteBuffer;
import java.nio.CharBuffer;
import java.nio.charset.CharacterCodingException;
import java.nio.charset.Charset;
import java.nio.charset.CharsetDecoder;
import java.nio.charset.CharsetEncoder;
import java.nio.charset.CodingErrorAction;
import java.util.Iterator;
import java.util.Set;
import java.util.SortedMap;

public class CharsetUtils
{

    public static final byte EMPTY_BARRAY[] = new byte[0];
    public static final char EMPTY_CARRAY[] = new char[0];
    public static final String LOG_TAG = com/adobe/air/utils/CharsetUtils.toString();

    public CharsetUtils()
    {
    }

    public static byte[] ConvertMBCStoUTF16(byte abyte0[], String s)
    {
        try
        {
            abyte0 = DecodeBuffer(abyte0, s);
            abyte0 = Charset.forName("UTF-16LE").encode(abyte0).array();
        }
        // Misplaced declaration of an exception variable
        catch (byte abyte0[])
        {
            return EMPTY_BARRAY;
        }
        return abyte0;
    }

    public static byte[] ConvertMBCStoUTF8(byte abyte0[], String s)
    {
        try
        {
            abyte0 = DecodeBuffer(abyte0, s);
            abyte0 = Charset.forName("UTF-8").newEncoder().encode(abyte0).array();
        }
        // Misplaced declaration of an exception variable
        catch (byte abyte0[])
        {
            return EMPTY_BARRAY;
        }
        return abyte0;
    }

    public static byte[] ConvertUTF16toMBCS(byte abyte0[], String s)
    {
        try
        {
            abyte0 = DecodeBuffer(abyte0, "UTF-16LE");
            s = Charset.forName(s).newEncoder();
            s.onUnmappableCharacter(CodingErrorAction.REPLACE);
            abyte0 = s.encode(abyte0).array();
        }
        // Misplaced declaration of an exception variable
        catch (byte abyte0[])
        {
            return EMPTY_BARRAY;
        }
        return abyte0;
    }

    public static byte[] ConvertUTF8toMBCS(byte abyte0[], String s)
    {
        try
        {
            abyte0 = DecodeBuffer(abyte0, "UTF-8");
            s = Charset.forName(s).newEncoder();
            s.onUnmappableCharacter(CodingErrorAction.REPLACE);
            abyte0 = s.encode(abyte0).array();
        }
        // Misplaced declaration of an exception variable
        catch (byte abyte0[])
        {
            return EMPTY_BARRAY;
        }
        return abyte0;
    }

    public static CharBuffer DecodeBuffer(byte abyte0[], String s)
        throws CharacterCodingException
    {
        s = Charset.forName(s).newDecoder();
        s.onUnmappableCharacter(CodingErrorAction.REPLACE);
        return s.decode(ByteBuffer.wrap(abyte0));
    }

    public static String QueryAvailableCharsets()
    {
        Iterator iterator = Charset.availableCharsets().keySet().iterator();
        String s;
        String s1;
        for (s = ""; iterator.hasNext(); s = (new StringBuilder()).append(s).append(s1).append(" ").toString())
        {
            s1 = (String)iterator.next();
        }

        return s;
    }

    public static char[] mbcsToUtf16(byte abyte0[])
    {
        char ac[];
        try
        {
            abyte0 = Charset.forName("ISO-8859-1").newDecoder().decode(ByteBuffer.wrap(abyte0)).array();
        }
        // Misplaced declaration of an exception variable
        catch (byte abyte0[])
        {
            return EMPTY_CARRAY;
        }
        ac = abyte0;
        if (abyte0 == null)
        {
            ac = EMPTY_CARRAY;
        }
        return ac;
    }

    public static byte[] mbcsToUtf8(byte abyte0[])
    {
        return utf16ToUtf8(mbcsToUtf16(abyte0));
    }

    public static byte[] utf16ToUtf8(char ac[])
    {
        byte abyte0[];
        try
        {
            ac = Charset.forName("UTF-8").newEncoder().encode(CharBuffer.wrap(ac)).array();
        }
        // Misplaced declaration of an exception variable
        catch (char ac[])
        {
            return EMPTY_BARRAY;
        }
        abyte0 = ac;
        if (ac == null)
        {
            abyte0 = EMPTY_BARRAY;
        }
        return abyte0;
    }

}
