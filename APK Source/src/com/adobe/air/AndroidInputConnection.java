// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.adobe.air;

import android.text.Editable;
import android.view.inputmethod.BaseInputConnection;
import android.view.inputmethod.ExtractedText;
import android.view.inputmethod.ExtractedTextRequest;
import android.view.inputmethod.InputMethodManager;
import com.adobe.air.utils.AIRLogger;

// Referenced classes of package com.adobe.air:
//            AIRWindowSurfaceView

public class AndroidInputConnection extends BaseInputConnection
{

    private static final String LOG_TAG = "AndroidInputConnection";
    private CharSequence mComposedText;
    private ExtractedTextRequest mExtractRequest;
    private ExtractedText mExtractedText;
    private final AIRWindowSurfaceView mWindowSurfaceView;

    public AndroidInputConnection(AIRWindowSurfaceView airwindowsurfaceview)
    {
        super(airwindowsurfaceview, true);
        mExtractRequest = null;
        mComposedText = null;
        mExtractedText = null;
        mWindowSurfaceView = airwindowsurfaceview;
    }

    private native String nativeGetTextAfterCursor(int i);

    private native String nativeGetTextBeforeCursor(int i);

    private native int nativeGetTextBoxMaxChars();

    private native void nativeSetSelection(int i, int j);

    private void writeText(CharSequence charsequence)
    {
        int l = charsequence.length();
        int i;
        if (mComposedText != null)
        {
            int i1 = mComposedText.length();
            int j = Math.min(l, i1);
            i = 0;
            do
            {
                if (i >= j || charsequence.charAt(i) != mComposedText.charAt(i))
                {
                    for (int k = i; k < i1; k++)
                    {
                        AIRLogger.d("AndroidInputConnection", (new StringBuilder()).append("[JP] writeText ").append(charsequence).toString());
                        mWindowSurfaceView.nativeOnKeyListener(0, 67, 0, false, false, false);
                        mWindowSurfaceView.nativeOnKeyListener(1, 67, 0, false, false, false);
                    }

                    break;
                }
                i++;
            } while (true);
        } else
        {
            i = 0;
        }
        for (; i < l; i++)
        {
            AIRLogger.d("AndroidInputConnection", (new StringBuilder()).append("[JP] writeText 2 ").append(charsequence).toString());
            mWindowSurfaceView.nativeOnKeyListener(0, 0, charsequence.charAt(i), false, false, false);
            mWindowSurfaceView.nativeOnKeyListener(1, 0, charsequence.charAt(i), false, false, false);
        }

        updateIMEText();
    }

    public void Reset()
    {
        mComposedText = null;
        mExtractRequest = null;
        mExtractedText = null;
    }

    public boolean commitText(CharSequence charsequence, int i)
    {
        AIRLogger.d("AndroidInputConnection", (new StringBuilder()).append("[JP] setComposingText ").append(charsequence).toString());
        writeText(charsequence);
        mComposedText = null;
        return true;
    }

    public boolean deleteSurroundingText(int i, int j)
    {
        for (int k = 0; k < j; k++)
        {
            AIRLogger.d("AndroidInputConnection", "[JP] deleteSurroundingText ");
            mWindowSurfaceView.nativeOnKeyListener(0, 22, 0, false, false, false);
            mWindowSurfaceView.nativeOnKeyListener(1, 22, 0, false, false, false);
        }

        for (int l = 0; l < j + i; l++)
        {
            AIRLogger.d("AndroidInputConnection", "[JP] deleteSurroundingText 2 ");
            mWindowSurfaceView.nativeOnKeyListener(0, 67, 0, false, false, false);
            mWindowSurfaceView.nativeOnKeyListener(1, 67, 0, false, false, false);
        }

        return true;
    }

    public boolean finishComposingText()
    {
        mComposedText = null;
        if (mWindowSurfaceView.getIsFullScreen() && !mWindowSurfaceView.IsSurfaceChangedForSoftKeyboard())
        {
            mWindowSurfaceView.nativeShowOriginalRect();
        }
        return true;
    }

    public Editable getEditable()
    {
        return null;
    }

    public ExtractedText getExtractedText(ExtractedTextRequest extractedtextrequest, int i)
    {
        mWindowSurfaceView.setInputConnection(this);
        ExtractedText extractedtext = mWindowSurfaceView.nativeGetTextContent();
        if (extractedtext != null && extractedtext.text != null)
        {
            extractedtext.partialEndOffset = -1;
            extractedtext.partialStartOffset = -1;
            if ((i & 1) != 0)
            {
                extractedtext.startOffset = 0;
                mExtractedText = extractedtext;
                mExtractRequest = extractedtextrequest;
                mWindowSurfaceView.nativeShowOriginalRect();
            }
            return extractedtext;
        } else
        {
            return null;
        }
    }

    public CharSequence getTextAfterCursor(int i, int j)
    {
        return nativeGetTextAfterCursor(i);
    }

    public CharSequence getTextBeforeCursor(int i, int j)
    {
        return nativeGetTextBeforeCursor(i);
    }

    public boolean performContextMenuAction(int i)
    {
        int j = 0;
        i;
        JVM INSTR tableswitch 16908319 16908329: default 60
    //                   16908319 74
    //                   16908320 62
    //                   16908321 88
    //                   16908322 108
    //                   16908323 60
    //                   16908324 113
    //                   16908325 60
    //                   16908326 60
    //                   16908327 60
    //                   16908328 119
    //                   16908329 125;
           goto _L1 _L2 _L3 _L4 _L5 _L1 _L6 _L1 _L1 _L1 _L7 _L8
_L2:
        break; /* Loop/switch isn't completed */
_L1:
        return false;
_L3:
        if (mWindowSurfaceView.nativeIsTextSelected())
        {
            j = 1;
        } else
        {
            j = 2;
        }
_L10:
        return mWindowSurfaceView.onTextBoxContextMenuItem(j);
_L4:
        if (mWindowSurfaceView.nativeIsTextSelected())
        {
            j = 3;
        } else
        {
            j = 4;
        }
        continue; /* Loop/switch isn't completed */
_L5:
        j = 5;
        continue; /* Loop/switch isn't completed */
_L6:
        j = 6;
        continue; /* Loop/switch isn't completed */
_L7:
        j = 7;
        continue; /* Loop/switch isn't completed */
_L8:
        j = 8;
        if (true) goto _L10; else goto _L9
_L9:
    }

    public boolean performEditorAction(int i)
    {
        if (i == 6)
        {
            mWindowSurfaceView.showSoftKeyboard(false);
            mWindowSurfaceView.nativeDispatchUserTriggeredSkDeactivateEvent();
            return true;
        } else
        {
            return false;
        }
    }

    public boolean setComposingRegion(int i, int j)
    {
        mComposedText = mWindowSurfaceView.nativeGetTextContent().text.subSequence(i, j);
        return true;
    }

    public boolean setComposingText(CharSequence charsequence, int i)
    {
        int l = nativeGetTextBoxMaxChars();
        if (l != 0 && charsequence.length() > 0)
        {
            ExtractedText extractedtext = mWindowSurfaceView.nativeGetTextContent();
            int i1 = extractedtext.text.length();
            int j1 = extractedtext.selectionEnd;
            int k1 = extractedtext.selectionStart;
            int j = 0;
            if (mComposedText != null)
            {
                j = mComposedText.length();
            }
            j = Math.min((((l - i1) + j1) - k1) + j, charsequence.length());
            if (j > 0)
            {
                charsequence = charsequence.subSequence(0, j);
            } else
            {
                charsequence = null;
            }
        }
        if (charsequence != null)
        {
            AIRLogger.d("AndroidInputConnection", (new StringBuilder()).append("[JP] setComposingText ").append(charsequence).toString());
            writeText(charsequence);
            mComposedText = charsequence;
            if (i <= 0)
            {
                j = charsequence.length();
                l = Math.abs(i);
                for (i = 0; i < j + l; i++)
                {
                    AIRLogger.d("AndroidInputConnection", (new StringBuilder()).append("[JP] setComposingText ").append(charsequence).toString());
                    mWindowSurfaceView.nativeOnKeyListener(0, 21, 0, false, false, false);
                    mWindowSurfaceView.nativeOnKeyListener(1, 21, 0, false, false, false);
                }

            } else
            if (i > 1)
            {
                for (int k = 0; k < i - 1; k++)
                {
                    AIRLogger.d("AndroidInputConnection", (new StringBuilder()).append("[JP] setComposingText 2 ").append(charsequence).toString());
                    mWindowSurfaceView.nativeOnKeyListener(0, 22, 0, false, false, false);
                    mWindowSurfaceView.nativeOnKeyListener(1, 22, 0, false, false, false);
                }

            }
        }
        return true;
    }

    public boolean setSelection(int i, int j)
    {
        nativeSetSelection(i, j);
        return true;
    }

    public void updateIMEText()
    {
        InputMethodManager inputmethodmanager;
        if (mExtractRequest != null)
        {
            if ((inputmethodmanager = mWindowSurfaceView.getInputMethodManager()) != null && inputmethodmanager.isActive(mWindowSurfaceView))
            {
                ExtractedText extractedtext = mWindowSurfaceView.nativeGetTextContent();
                boolean flag = extractedtext.text.toString().equals(mExtractedText.text.toString());
                if (!flag || extractedtext.selectionStart != mExtractedText.selectionStart || extractedtext.selectionEnd != mExtractedText.selectionEnd || extractedtext.flags != mExtractedText.flags)
                {
                    extractedtext.startOffset = 0;
                    if (flag)
                    {
                        extractedtext.partialStartOffset = 0;
                        extractedtext.partialEndOffset = 0;
                        extractedtext.text = "";
                        mExtractedText.flags = extractedtext.flags;
                        mExtractedText.selectionStart = extractedtext.selectionStart;
                        mExtractedText.selectionEnd = extractedtext.selectionEnd;
                    } else
                    {
                        extractedtext.partialStartOffset = -1;
                        extractedtext.partialEndOffset = -1;
                        mExtractedText = extractedtext;
                    }
                    inputmethodmanager.updateExtractedText(mWindowSurfaceView, mExtractRequest.token, extractedtext);
                    return;
                }
            }
        }
    }
}
