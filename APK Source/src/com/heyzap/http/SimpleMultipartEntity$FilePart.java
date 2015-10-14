// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.heyzap.http;

import android.util.Log;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.OutputStream;

// Referenced classes of package com.heyzap.http:
//            SimpleMultipartEntity

private class file
{

    public File file;
    public byte header[];
    final SimpleMultipartEntity this$0;

    private byte[] createHeader(String s, String s1, String s2)
    {
        ByteArrayOutputStream bytearrayoutputstream = new ByteArrayOutputStream();
        try
        {
            bytearrayoutputstream.write(SimpleMultipartEntity.access$000(SimpleMultipartEntity.this));
            bytearrayoutputstream.write(SimpleMultipartEntity.access$100(SimpleMultipartEntity.this, s, s1));
            bytearrayoutputstream.write(SimpleMultipartEntity.access$200(SimpleMultipartEntity.this, s2));
            bytearrayoutputstream.write(SimpleMultipartEntity.access$300());
            bytearrayoutputstream.write(SimpleMultipartEntity.access$400());
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            Log.e("SimpleMultipartEntity", "createHeader ByteArrayOutputStream exception", s);
        }
        return bytearrayoutputstream.toByteArray();
    }

    public long getTotalLength()
    {
        return file.length() + (long)header.length;
    }

    public void writeTo(OutputStream outputstream)
        throws IOException
    {
        outputstream.write(header);
        SimpleMultipartEntity.access$500(SimpleMultipartEntity.this, header.length);
        FileInputStream fileinputstream = new FileInputStream(file);
        byte abyte0[] = new byte[4096];
        do
        {
            int i = fileinputstream.read(abyte0);
            if (i == -1)
            {
                break;
            }
            outputstream.write(abyte0, 0, i);
            SimpleMultipartEntity.access$500(SimpleMultipartEntity.this, i);
        } while (true);
        outputstream.write(SimpleMultipartEntity.access$400());
        SimpleMultipartEntity.access$500(SimpleMultipartEntity.this, SimpleMultipartEntity.access$400().length);
        outputstream.flush();
        try
        {
            fileinputstream.close();
            return;
        }
        // Misplaced declaration of an exception variable
        catch (OutputStream outputstream)
        {
            Log.w("SimpleMultipartEntity", "Cannot close input stream", outputstream);
        }
    }

    public (String s, File file1, String s1)
    {
        this$0 = SimpleMultipartEntity.this;
        super();
        header = createHeader(s, file1.getName(), s1);
        file = file1;
    }
}
