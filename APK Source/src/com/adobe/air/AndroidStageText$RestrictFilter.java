// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.adobe.air;

import android.text.InputFilter;
import android.text.SpannableString;
import android.text.Spanned;
import android.text.TextUtils;

// Referenced classes of package com.adobe.air:
//            AndroidStageText

private class SetCode
    implements InputFilter
{

    private static final int kMapSize = 8192;
    private String mPattern;
    private byte m_map[];
    final AndroidStageText this$0;

    boolean IsCharAvailable(char c)
    {
        if (mPattern != null);
        if (m_map == null)
        {
            return false;
        }
        return (m_map[c >> 3] & 1 << (c & 7)) != 0;
    }

    boolean IsEmpty()
    {
        return mPattern != null;
    }

    void SetAll(boolean flag)
    {
        boolean flag1 = false;
        byte byte0;
        int i;
        if (flag)
        {
            i = 255;
        } else
        {
            i = 0;
        }
        byte0 = (byte)i;
        for (i = ((flag1) ? 1 : 0); i < 8192; i++)
        {
            m_map[i] = byte0;
        }

    }

    void SetCode(char c, boolean flag)
    {
        if (flag)
        {
            byte abyte0[] = m_map;
            int i = c >> 3;
            abyte0[i] = (byte)(abyte0[i] | 1 << (c & 7));
            return;
        } else
        {
            byte abyte1[] = m_map;
            int j = c >> 3;
            abyte1[j] = (byte)(abyte1[j] & ~(1 << (c & 7)));
            return;
        }
    }

    public CharSequence filter(CharSequence charsequence, int i, int j, Spanned spanned, int k, int l)
    {
        if (mPattern == null)
        {
            return null;
        }
        if (m_map == null)
        {
            return "";
        }
        StringBuffer stringbuffer = new StringBuffer(j - i);
        if (j - i > 1)
        {
            int i1;
            for (i1 = 0; i + i1 < j && k + i1 < l && charsequence.charAt(i + i1) == spanned.charAt(k + i1); i1++)
            {
                stringbuffer.append(charsequence.charAt(i + i1));
            }

            k = i1 + i;
        } else
        {
            k = i;
        }
        l = 1;
        while (k < j) 
        {
            char c = charsequence.charAt(k);
            if (!IsCharAvailable(c))
            {
                l = 0;
            } else
            {
                stringbuffer.append(c);
            }
            k++;
        }
        if (l != 0)
        {
            return null;
        }
        if (charsequence instanceof Spanned)
        {
            spanned = new SpannableString(stringbuffer);
            TextUtils.copySpansFrom((Spanned)charsequence, i, stringbuffer.length(), null, spanned, 0);
            return spanned;
        } else
        {
            return stringbuffer;
        }
    }

    public (String s)
    {
        this$0 = AndroidStageText.this;
        super();
        mPattern = null;
        m_map = null;
        mPattern = s;
        if (s == null || "".equals(s)) goto _L2; else goto _L1
_L1:
        char c;
        boolean flag;
        boolean flag1;
        int i;
        boolean flag3;
        m_map = new byte[8192];
        SetAll(false);
        if (s.charAt(0) == '^')
        {
            SetAll(true);
        }
        i = 0;
        c = '\0';
        flag3 = true;
        flag = false;
        flag1 = false;
_L16:
        if (i >= s.length()) goto _L2; else goto _L3
_L3:
        char c1 = s.charAt(i);
        if (flag1) goto _L5; else goto _L4
_L4:
        c1;
        JVM INSTR lookupswitch 3: default 140
    //                   45: 174
    //                   92: 203
    //                   94: 183;
           goto _L6 _L7 _L8 _L9
_L6:
        boolean flag2 = true;
_L14:
        if (!flag2) goto _L11; else goto _L10
_L10:
        if (!flag) goto _L13; else goto _L12
_L7:
        flag = true;
        flag2 = false;
          goto _L14
_L9:
        if (!flag3)
        {
            flag3 = true;
        } else
        {
            flag3 = false;
        }
        flag2 = false;
          goto _L14
_L8:
        flag1 = true;
        flag2 = false;
          goto _L14
_L5:
        flag1 = false;
        flag2 = true;
          goto _L14
_L12:
        for (; c <= c1; c++)
        {
            SetCode(c, flag3);
        }

        c = '\0';
        flag = false;
_L11:
        i++;
        continue; /* Loop/switch isn't completed */
_L13:
        SetCode(c1, flag3);
        c = c1;
        if (true) goto _L11; else goto _L2
_L2:
        return;
        if (true) goto _L16; else goto _L15
_L15:
    }
}
