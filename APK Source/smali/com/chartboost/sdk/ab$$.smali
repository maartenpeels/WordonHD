.class public Lcom/chartboost/sdk/ab$$;
.super Ljava/lang/Object;
.source "ab$$.java"


# static fields
.field private static final S_BASE64CHAR:[C

.field private static final S_BASE64PAD:C = '='

.field private static final S_DECODETABLE:[B


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 7
    const/16 v1, 0x40

    new-array v1, v1, [C

    fill-array-data v1, :array_0

    sput-object v1, Lcom/chartboost/sdk/ab$$;->S_BASE64CHAR:[C

    .line 17
    const/16 v1, 0x80

    new-array v1, v1, [B

    sput-object v1, Lcom/chartboost/sdk/ab$$;->S_DECODETABLE:[B

    .line 19
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v1, Lcom/chartboost/sdk/ab$$;->S_DECODETABLE:[B

    array-length v1, v1

    if-lt v0, v1, :cond_0

    .line 21
    const/4 v0, 0x0

    :goto_1
    sget-object v1, Lcom/chartboost/sdk/ab$$;->S_BASE64CHAR:[C

    array-length v1, v1

    if-lt v0, v1, :cond_1

    .line 23
    return-void

    .line 20
    :cond_0
    sget-object v1, Lcom/chartboost/sdk/ab$$;->S_DECODETABLE:[B

    const/16 v2, 0x7f

    aput-byte v2, v1, v0

    .line 19
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 22
    :cond_1
    sget-object v1, Lcom/chartboost/sdk/ab$$;->S_DECODETABLE:[B

    sget-object v2, Lcom/chartboost/sdk/ab$$;->S_BASE64CHAR:[C

    aget-char v2, v2, v0

    int-to-byte v3, v0

    aput-byte v3, v1, v2

    .line 21
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 7
    nop

    :array_0
    .array-data 2
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
        0x47s
        0x48s
        0x49s
        0x4as
        0x4bs
        0x4cs
        0x4ds
        0x4es
        0x4fs
        0x50s
        0x51s
        0x52s
        0x53s
        0x54s
        0x55s
        0x56s
        0x57s
        0x58s
        0x59s
        0x5as
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
        0x67s
        0x68s
        0x69s
        0x6as
        0x6bs
        0x6cs
        0x6ds
        0x6es
        0x6fs
        0x70s
        0x71s
        0x72s
        0x73s
        0x74s
        0x75s
        0x76s
        0x77s
        0x78s
        0x79s
        0x7as
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x2bs
        0x2fs
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static decode(Ljava/lang/String;Ljava/io/OutputStream;)V
    .locals 10
    .param p0, "data"    # Ljava/lang/String;
    .param p1, "ostream"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    .line 136
    const/4 v7, 0x4

    new-array v2, v7, [C

    .line 137
    .local v2, "ibuf":[C
    const/4 v3, 0x0

    .line 138
    .local v3, "ibufcount":I
    const/4 v7, 0x3

    new-array v5, v7, [B

    .line 139
    .local v5, "obuf":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    if-lt v1, v7, :cond_0

    .line 151
    return-void

    .line 140
    :cond_0
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 141
    .local v0, "ch":C
    const/16 v7, 0x3d

    if-eq v0, v7, :cond_1

    .line 142
    sget-object v7, Lcom/chartboost/sdk/ab$$;->S_DECODETABLE:[B

    array-length v7, v7

    if-ge v0, v7, :cond_2

    sget-object v7, Lcom/chartboost/sdk/ab$$;->S_DECODETABLE:[B

    aget-byte v7, v7, v0

    const/16 v8, 0x7f

    if-eq v7, v8, :cond_2

    .line 143
    :cond_1
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "ibufcount":I
    .local v4, "ibufcount":I
    aput-char v0, v2, v3

    .line 144
    array-length v7, v2

    if-ne v4, v7, :cond_3

    .line 145
    const/4 v3, 0x0

    .line 146
    .end local v4    # "ibufcount":I
    .restart local v3    # "ibufcount":I
    invoke-static {v2, v5, v9}, Lcom/chartboost/sdk/ab$$;->decode0([C[BI)I

    move-result v6

    .line 147
    .local v6, "obufcount":I
    invoke-virtual {p1, v5, v9, v6}, Ljava/io/OutputStream;->write([BII)V

    .line 139
    .end local v6    # "obufcount":I
    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v3    # "ibufcount":I
    .restart local v4    # "ibufcount":I
    :cond_3
    move v3, v4

    .end local v4    # "ibufcount":I
    .restart local v3    # "ibufcount":I
    goto :goto_1
.end method

.method public static decode([CIILjava/io/OutputStream;)V
    .locals 10
    .param p0, "data"    # [C
    .param p1, "off"    # I
    .param p2, "len"    # I
    .param p3, "ostream"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    .line 115
    const/4 v7, 0x4

    new-array v2, v7, [C

    .line 116
    .local v2, "ibuf":[C
    const/4 v3, 0x0

    .line 117
    .local v3, "ibufcount":I
    const/4 v7, 0x3

    new-array v5, v7, [B

    .line 118
    .local v5, "obuf":[B
    move v1, p1

    .local v1, "i":I
    move v4, v3

    .end local v3    # "ibufcount":I
    .local v4, "ibufcount":I
    :goto_0
    add-int v7, p1, p2

    if-lt v1, v7, :cond_0

    .line 130
    return-void

    .line 119
    :cond_0
    aget-char v0, p0, v1

    .line 120
    .local v0, "ch":C
    const/16 v7, 0x3d

    if-eq v0, v7, :cond_1

    .line 121
    sget-object v7, Lcom/chartboost/sdk/ab$$;->S_DECODETABLE:[B

    array-length v7, v7

    if-ge v0, v7, :cond_3

    sget-object v7, Lcom/chartboost/sdk/ab$$;->S_DECODETABLE:[B

    aget-byte v7, v7, v0

    const/16 v8, 0x7f

    if-eq v7, v8, :cond_3

    .line 122
    :cond_1
    add-int/lit8 v3, v4, 0x1

    .end local v4    # "ibufcount":I
    .restart local v3    # "ibufcount":I
    aput-char v0, v2, v4

    .line 123
    array-length v7, v2

    if-ne v3, v7, :cond_2

    .line 124
    const/4 v3, 0x0

    .line 125
    invoke-static {v2, v5, v9}, Lcom/chartboost/sdk/ab$$;->decode0([C[BI)I

    move-result v6

    .line 126
    .local v6, "obufcount":I
    invoke-virtual {p3, v5, v9, v6}, Ljava/io/OutputStream;->write([BII)V

    .line 118
    .end local v6    # "obufcount":I
    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    move v4, v3

    .end local v3    # "ibufcount":I
    .restart local v4    # "ibufcount":I
    goto :goto_0

    :cond_3
    move v3, v4

    .end local v4    # "ibufcount":I
    .restart local v3    # "ibufcount":I
    goto :goto_1
.end method

.method public static decode(Ljava/lang/String;)[B
    .locals 11
    .param p0, "data"    # Ljava/lang/String;

    .prologue
    const/4 v10, 0x0

    .line 89
    const/4 v8, 0x4

    new-array v2, v8, [C

    .line 90
    .local v2, "ibuf":[C
    const/4 v3, 0x0

    .line 91
    .local v3, "ibufcount":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v8

    div-int/lit8 v8, v8, 0x4

    mul-int/lit8 v8, v8, 0x3

    add-int/lit8 v8, v8, 0x3

    new-array v5, v8, [B

    .line 92
    .local v5, "obuf":[B
    const/4 v6, 0x0

    .line 93
    .local v6, "obufcount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v8

    if-lt v1, v8, :cond_0

    .line 104
    array-length v8, v5

    if-ne v6, v8, :cond_3

    move-object v8, v5

    .line 108
    :goto_1
    return-object v8

    .line 94
    :cond_0
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 95
    .local v0, "ch":C
    const/16 v8, 0x3d

    if-eq v0, v8, :cond_1

    .line 96
    sget-object v8, Lcom/chartboost/sdk/ab$$;->S_DECODETABLE:[B

    array-length v8, v8

    if-ge v0, v8, :cond_2

    sget-object v8, Lcom/chartboost/sdk/ab$$;->S_DECODETABLE:[B

    aget-byte v8, v8, v0

    const/16 v9, 0x7f

    if-eq v8, v9, :cond_2

    .line 97
    :cond_1
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "ibufcount":I
    .local v4, "ibufcount":I
    aput-char v0, v2, v3

    .line 98
    array-length v8, v2

    if-ne v4, v8, :cond_4

    .line 99
    const/4 v3, 0x0

    .line 100
    .end local v4    # "ibufcount":I
    .restart local v3    # "ibufcount":I
    invoke-static {v2, v5, v6}, Lcom/chartboost/sdk/ab$$;->decode0([C[BI)I

    move-result v8

    add-int/2addr v6, v8

    .line 93
    :cond_2
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 106
    .end local v0    # "ch":C
    :cond_3
    new-array v7, v6, [B

    .line 107
    .local v7, "ret":[B
    invoke-static {v5, v10, v7, v10, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v8, v7

    .line 108
    goto :goto_1

    .end local v3    # "ibufcount":I
    .end local v7    # "ret":[B
    .restart local v0    # "ch":C
    .restart local v4    # "ibufcount":I
    :cond_4
    move v3, v4

    .end local v4    # "ibufcount":I
    .restart local v3    # "ibufcount":I
    goto :goto_2
.end method

.method public static decode([CII)[B
    .locals 8
    .param p0, "data"    # [C
    .param p1, "off"    # I
    .param p2, "len"    # I

    .prologue
    .line 55
    if-nez p0, :cond_0

    .line 56
    const/4 v1, 0x0

    .line 57
    .local v1, "targetByteCur":I
    const/16 v0, 0xff

    new-array v0, v0, [B

    .local v0, "dataBytes":[B
    move v2, v1

    .line 58
    .end local v1    # "targetByteCur":I
    .local v2, "targetByteCur":I
    :goto_0
    array-length v1, v0

    if-lt v2, v1, :cond_1

    .line 63
    .end local v0    # "dataBytes":[B
    .end local v2    # "targetByteCur":I
    :cond_0
    const/4 v0, 0x4

    new-array v2, v0, [C

    .line 64
    .local v2, "ibuf":[C
    const/4 v1, 0x0

    .line 65
    .local v1, "ibufcount":I
    div-int/lit8 v0, p2, 0x4

    mul-int/lit8 v0, v0, 0x3

    add-int/lit8 v0, v0, 0x3

    new-array v5, v0, [B

    .line 66
    .local v5, "obuf":[B
    const/4 v3, 0x0

    .line 67
    .local v3, "obufcount":I
    move v0, p1

    .local v0, "i":I
    move v6, v3

    .end local v3    # "obufcount":I
    .local v6, "obufcount":I
    move v4, v1

    .end local v1    # "ibufcount":I
    .local v4, "ibufcount":I
    move v1, v0

    .end local v0    # "i":I
    .local v1, "i":I
    :goto_1
    add-int v0, p1, p2

    if-lt v1, v0, :cond_2

    .line 78
    array-length p0, v5

    .end local p0    # "data":[C
    if-ne v6, p0, :cond_4

    move-object p0, v5

    .line 82
    .end local p1    # "off":I
    .end local p2    # "len":I
    :goto_2
    return-object p0

    .line 59
    .end local v1    # "i":I
    .end local v4    # "ibufcount":I
    .end local v5    # "obuf":[B
    .end local v6    # "obufcount":I
    .local v0, "dataBytes":[B
    .local v2, "targetByteCur":I
    .restart local p0    # "data":[C
    .restart local p1    # "off":I
    .restart local p2    # "len":I
    :cond_1
    const/4 v1, 0x0

    .line 60
    .local v1, "seed":I
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "targetByteCur":I
    .local v3, "targetByteCur":I
    aget-byte v4, v0, v2

    xor-int/2addr v1, v4

    int-to-byte v1, v1

    aput-byte v1, v0, v2

    .end local v1    # "seed":I
    move v2, v3

    .end local v3    # "targetByteCur":I
    .restart local v2    # "targetByteCur":I
    goto :goto_0

    .line 68
    .end local v0    # "dataBytes":[B
    .local v1, "i":I
    .local v2, "ibuf":[C
    .restart local v4    # "ibufcount":I
    .restart local v5    # "obuf":[B
    .restart local v6    # "obufcount":I
    :cond_2
    aget-char v0, p0, v1

    .line 69
    .local v0, "ch":C
    const/16 v3, 0x3d

    if-eq v0, v3, :cond_3

    .line 70
    sget-object v3, Lcom/chartboost/sdk/ab$$;->S_DECODETABLE:[B

    array-length v3, v3

    if-ge v0, v3, :cond_6

    sget-object v3, Lcom/chartboost/sdk/ab$$;->S_DECODETABLE:[B

    aget-byte v3, v3, v0

    const/16 v7, 0x7f

    if-eq v3, v7, :cond_6

    .line 71
    :cond_3
    add-int/lit8 v3, v4, 0x1

    .end local v4    # "ibufcount":I
    .local v3, "ibufcount":I
    aput-char v0, v2, v4

    .line 72
    array-length v0, v2

    .end local v0    # "ch":C
    if-ne v3, v0, :cond_5

    .line 73
    const/4 v0, 0x0

    .line 74
    .end local v3    # "ibufcount":I
    .local v0, "ibufcount":I
    invoke-static {v2, v5, v6}, Lcom/chartboost/sdk/ab$$;->decode0([C[BI)I

    move-result v3

    add-int/2addr v3, v6

    .end local v6    # "obufcount":I
    .local v3, "obufcount":I
    move v4, v3

    .end local v3    # "obufcount":I
    .local v4, "obufcount":I
    move v3, v0

    .line 67
    .end local v0    # "ibufcount":I
    .local v3, "ibufcount":I
    :goto_3
    add-int/lit8 v0, v1, 0x1

    .end local v1    # "i":I
    .local v0, "i":I
    move v1, v0

    .end local v0    # "i":I
    .restart local v1    # "i":I
    move v6, v4

    .end local v4    # "obufcount":I
    .restart local v6    # "obufcount":I
    move v4, v3

    .end local v3    # "ibufcount":I
    .local v4, "ibufcount":I
    goto :goto_1

    .line 80
    .end local p0    # "data":[C
    :cond_4
    new-array p0, v6, [B

    .line 81
    .local p0, "ret":[B
    const/4 p1, 0x0

    const/4 p2, 0x0

    invoke-static {v5, p1, p0, p2, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_2

    .end local v4    # "ibufcount":I
    .restart local v3    # "ibufcount":I
    .local p0, "data":[C
    :cond_5
    move v4, v6

    .end local v6    # "obufcount":I
    .local v4, "obufcount":I
    goto :goto_3

    .end local v3    # "ibufcount":I
    .local v0, "ch":C
    .local v4, "ibufcount":I
    .restart local v6    # "obufcount":I
    :cond_6
    move v3, v4

    .end local v4    # "ibufcount":I
    .restart local v3    # "ibufcount":I
    move v4, v6

    .end local v6    # "obufcount":I
    .local v4, "obufcount":I
    goto :goto_3
.end method

.method private static decode0([C[BI)I
    .locals 11
    .param p0, "ibuf"    # [C
    .param p1, "obuf"    # [B
    .param p2, "wp"    # I

    .prologue
    const/16 v7, 0x3d

    const/4 v10, 0x1

    const/4 v9, 0x3

    const/4 v8, 0x2

    .line 26
    const/4 v4, 0x3

    .line 27
    .local v4, "outlen":I
    aget-char v6, p0, v9

    if-ne v6, v7, :cond_0

    const/4 v4, 0x2

    .line 28
    :cond_0
    aget-char v6, p0, v8

    if-ne v6, v7, :cond_1

    const/4 v4, 0x1

    .line 29
    :cond_1
    sget-object v6, Lcom/chartboost/sdk/ab$$;->S_DECODETABLE:[B

    const/4 v7, 0x0

    aget-char v7, p0, v7

    aget-byte v0, v6, v7

    .line 30
    .local v0, "b0":I
    sget-object v6, Lcom/chartboost/sdk/ab$$;->S_DECODETABLE:[B

    aget-char v7, p0, v10

    aget-byte v1, v6, v7

    .line 31
    .local v1, "b1":I
    sget-object v6, Lcom/chartboost/sdk/ab$$;->S_DECODETABLE:[B

    aget-char v7, p0, v8

    aget-byte v2, v6, v7

    .line 32
    .local v2, "b2":I
    sget-object v6, Lcom/chartboost/sdk/ab$$;->S_DECODETABLE:[B

    aget-char v7, p0, v9

    aget-byte v3, v6, v7

    .line 33
    .local v3, "b3":I
    packed-switch v4, :pswitch_data_0

    .line 47
    new-instance v6, Ljava/lang/RuntimeException;

    const-string v7, "Couldn\'t decode."

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 35
    :pswitch_0
    shl-int/lit8 v6, v0, 0x2

    and-int/lit16 v6, v6, 0xfc

    shr-int/lit8 v7, v1, 0x4

    and-int/lit8 v7, v7, 0x3

    or-int/2addr v6, v7

    int-to-byte v6, v6

    aput-byte v6, p1, p2

    move v6, v10

    .line 45
    :goto_0
    return v6

    .line 38
    :pswitch_1
    add-int/lit8 v5, p2, 0x1

    .end local p2    # "wp":I
    .local v5, "wp":I
    shl-int/lit8 v6, v0, 0x2

    and-int/lit16 v6, v6, 0xfc

    shr-int/lit8 v7, v1, 0x4

    and-int/lit8 v7, v7, 0x3

    or-int/2addr v6, v7

    int-to-byte v6, v6

    aput-byte v6, p1, p2

    .line 39
    shl-int/lit8 v6, v1, 0x4

    and-int/lit16 v6, v6, 0xf0

    shr-int/lit8 v7, v2, 0x2

    and-int/lit8 v7, v7, 0xf

    or-int/2addr v6, v7

    int-to-byte v6, v6

    aput-byte v6, p1, v5

    move p2, v5

    .end local v5    # "wp":I
    .restart local p2    # "wp":I
    move v6, v8

    .line 40
    goto :goto_0

    .line 42
    :pswitch_2
    add-int/lit8 v5, p2, 0x1

    .end local p2    # "wp":I
    .restart local v5    # "wp":I
    shl-int/lit8 v6, v0, 0x2

    and-int/lit16 v6, v6, 0xfc

    shr-int/lit8 v7, v1, 0x4

    and-int/lit8 v7, v7, 0x3

    or-int/2addr v6, v7

    int-to-byte v6, v6

    aput-byte v6, p1, p2

    .line 43
    add-int/lit8 p2, v5, 0x1

    .end local v5    # "wp":I
    .restart local p2    # "wp":I
    shl-int/lit8 v6, v1, 0x4

    and-int/lit16 v6, v6, 0xf0

    shr-int/lit8 v7, v2, 0x2

    and-int/lit8 v7, v7, 0xf

    or-int/2addr v6, v7

    int-to-byte v6, v6

    aput-byte v6, p1, v5

    .line 44
    shl-int/lit8 v6, v2, 0x6

    and-int/lit16 v6, v6, 0xc0

    and-int/lit8 v7, v3, 0x3f

    or-int/2addr v6, v7

    int-to-byte v6, v6

    aput-byte v6, p1, p2

    move v6, v9

    .line 45
    goto :goto_0

    .line 33
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static encode([B)Ljava/lang/String;
    .locals 2
    .param p0, "data"    # [B

    .prologue
    .line 157
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1}, Lcom/chartboost/sdk/ab$$;->encode([BII)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static encode([BII)Ljava/lang/String;
    .locals 9
    .param p0, "data"    # [B
    .param p1, "off"    # I
    .param p2, "len"    # I

    .prologue
    const/16 v8, 0x3d

    .line 164
    if-gtz p2, :cond_0

    const-string v6, ""

    .line 193
    :goto_0
    return-object v6

    .line 165
    :cond_0
    div-int/lit8 v6, p2, 0x3

    mul-int/lit8 v6, v6, 0x4

    add-int/lit8 v6, v6, 0x4

    new-array v1, v6, [C

    .line 166
    .local v1, "out":[C
    move v3, p1

    .line 167
    .local v3, "rindex":I
    const/4 v4, 0x0

    .line 168
    .local v4, "windex":I
    sub-int v2, p2, p1

    .local v2, "rest":I
    move v5, v4

    .line 169
    .end local v4    # "windex":I
    .local v5, "windex":I
    :goto_1
    const/4 v6, 0x3

    if-ge v2, v6, :cond_1

    .line 180
    const/4 v6, 0x1

    if-ne v2, v6, :cond_2

    .line 181
    aget-byte v6, p0, v3

    and-int/lit16 v0, v6, 0xff

    .line 182
    .local v0, "i":I
    add-int/lit8 v4, v5, 0x1

    .end local v5    # "windex":I
    .restart local v4    # "windex":I
    sget-object v6, Lcom/chartboost/sdk/ab$$;->S_BASE64CHAR:[C

    shr-int/lit8 v7, v0, 0x2

    aget-char v6, v6, v7

    aput-char v6, v1, v5

    .line 183
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "windex":I
    .restart local v5    # "windex":I
    sget-object v6, Lcom/chartboost/sdk/ab$$;->S_BASE64CHAR:[C

    shl-int/lit8 v7, v0, 0x4

    and-int/lit8 v7, v7, 0x3f

    aget-char v6, v6, v7

    aput-char v6, v1, v4

    .line 184
    add-int/lit8 v4, v5, 0x1

    .end local v5    # "windex":I
    .restart local v4    # "windex":I
    aput-char v8, v1, v5

    .line 185
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "windex":I
    .restart local v5    # "windex":I
    aput-char v8, v1, v4

    move v4, v5

    .line 193
    .end local v0    # "i":I
    .end local v5    # "windex":I
    .restart local v4    # "windex":I
    :goto_2
    new-instance v6, Ljava/lang/String;

    const/4 v7, 0x0

    invoke-direct {v6, v1, v7, v4}, Ljava/lang/String;-><init>([CII)V

    goto :goto_0

    .line 170
    .end local v4    # "windex":I
    .restart local v5    # "windex":I
    :cond_1
    aget-byte v6, p0, v3

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x10

    .line 171
    add-int/lit8 v7, v3, 0x1

    aget-byte v7, p0, v7

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x8

    .line 170
    add-int/2addr v6, v7

    .line 172
    add-int/lit8 v7, v3, 0x2

    aget-byte v7, p0, v7

    and-int/lit16 v7, v7, 0xff

    .line 170
    add-int v0, v6, v7

    .line 173
    .restart local v0    # "i":I
    add-int/lit8 v4, v5, 0x1

    .end local v5    # "windex":I
    .restart local v4    # "windex":I
    sget-object v6, Lcom/chartboost/sdk/ab$$;->S_BASE64CHAR:[C

    shr-int/lit8 v7, v0, 0x12

    aget-char v6, v6, v7

    aput-char v6, v1, v5

    .line 174
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "windex":I
    .restart local v5    # "windex":I
    sget-object v6, Lcom/chartboost/sdk/ab$$;->S_BASE64CHAR:[C

    shr-int/lit8 v7, v0, 0xc

    and-int/lit8 v7, v7, 0x3f

    aget-char v6, v6, v7

    aput-char v6, v1, v4

    .line 175
    add-int/lit8 v4, v5, 0x1

    .end local v5    # "windex":I
    .restart local v4    # "windex":I
    sget-object v6, Lcom/chartboost/sdk/ab$$;->S_BASE64CHAR:[C

    shr-int/lit8 v7, v0, 0x6

    and-int/lit8 v7, v7, 0x3f

    aget-char v6, v6, v7

    aput-char v6, v1, v5

    .line 176
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "windex":I
    .restart local v5    # "windex":I
    sget-object v6, Lcom/chartboost/sdk/ab$$;->S_BASE64CHAR:[C

    and-int/lit8 v7, v0, 0x3f

    aget-char v6, v6, v7

    aput-char v6, v1, v4

    .line 177
    add-int/lit8 v3, v3, 0x3

    .line 178
    add-int/lit8 v2, v2, -0x3

    goto :goto_1

    .line 186
    .end local v0    # "i":I
    :cond_2
    const/4 v6, 0x2

    if-ne v2, v6, :cond_3

    .line 187
    aget-byte v6, p0, v3

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x8

    add-int/lit8 v7, v3, 0x1

    aget-byte v7, p0, v7

    and-int/lit16 v7, v7, 0xff

    add-int v0, v6, v7

    .line 188
    .restart local v0    # "i":I
    add-int/lit8 v4, v5, 0x1

    .end local v5    # "windex":I
    .restart local v4    # "windex":I
    sget-object v6, Lcom/chartboost/sdk/ab$$;->S_BASE64CHAR:[C

    shr-int/lit8 v7, v0, 0xa

    aget-char v6, v6, v7

    aput-char v6, v1, v5

    .line 189
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "windex":I
    .restart local v5    # "windex":I
    sget-object v6, Lcom/chartboost/sdk/ab$$;->S_BASE64CHAR:[C

    shr-int/lit8 v7, v0, 0x4

    and-int/lit8 v7, v7, 0x3f

    aget-char v6, v6, v7

    aput-char v6, v1, v4

    .line 190
    add-int/lit8 v4, v5, 0x1

    .end local v5    # "windex":I
    .restart local v4    # "windex":I
    sget-object v6, Lcom/chartboost/sdk/ab$$;->S_BASE64CHAR:[C

    shl-int/lit8 v7, v0, 0x2

    and-int/lit8 v7, v7, 0x3f

    aget-char v6, v6, v7

    aput-char v6, v1, v5

    .line 191
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "windex":I
    .restart local v5    # "windex":I
    aput-char v8, v1, v4

    .end local v0    # "i":I
    :cond_3
    move v4, v5

    .end local v5    # "windex":I
    .restart local v4    # "windex":I
    goto/16 :goto_2
.end method

.method public static encode([BIILjava/io/OutputStream;)V
    .locals 11
    .param p0, "data"    # [B
    .param p1, "off"    # I
    .param p2, "len"    # I
    .param p3, "ostream"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x4

    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 200
    if-gtz p2, :cond_1

    .line 231
    :cond_0
    :goto_0
    return-void

    .line 201
    :cond_1
    new-array v1, v10, [B

    .line 202
    .local v1, "out":[B
    move v3, p1

    .line 203
    .local v3, "rindex":I
    sub-int v2, p2, p1

    .line 204
    .local v2, "rest":I
    :goto_1
    if-ge v2, v9, :cond_2

    .line 216
    if-ne v2, v7, :cond_3

    .line 217
    aget-byte v4, p0, v3

    and-int/lit16 v0, v4, 0xff

    .line 218
    .local v0, "i":I
    sget-object v4, Lcom/chartboost/sdk/ab$$;->S_BASE64CHAR:[C

    shr-int/lit8 v5, v0, 0x2

    aget-char v4, v4, v5

    int-to-byte v4, v4

    aput-byte v4, v1, v6

    .line 219
    sget-object v4, Lcom/chartboost/sdk/ab$$;->S_BASE64CHAR:[C

    shl-int/lit8 v5, v0, 0x4

    and-int/lit8 v5, v5, 0x3f

    aget-char v4, v4, v5

    int-to-byte v4, v4

    aput-byte v4, v1, v7

    .line 220
    const/16 v4, 0x3d

    aput-byte v4, v1, v8

    .line 221
    const/16 v4, 0x3d

    aput-byte v4, v1, v9

    .line 222
    invoke-virtual {p3, v1, v6, v10}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0

    .line 205
    .end local v0    # "i":I
    :cond_2
    aget-byte v4, p0, v3

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x10

    .line 206
    add-int/lit8 v5, v3, 0x1

    aget-byte v5, p0, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x8

    .line 205
    add-int/2addr v4, v5

    .line 207
    add-int/lit8 v5, v3, 0x2

    aget-byte v5, p0, v5

    and-int/lit16 v5, v5, 0xff

    .line 205
    add-int v0, v4, v5

    .line 208
    .restart local v0    # "i":I
    sget-object v4, Lcom/chartboost/sdk/ab$$;->S_BASE64CHAR:[C

    shr-int/lit8 v5, v0, 0x12

    aget-char v4, v4, v5

    int-to-byte v4, v4

    aput-byte v4, v1, v6

    .line 209
    sget-object v4, Lcom/chartboost/sdk/ab$$;->S_BASE64CHAR:[C

    shr-int/lit8 v5, v0, 0xc

    and-int/lit8 v5, v5, 0x3f

    aget-char v4, v4, v5

    int-to-byte v4, v4

    aput-byte v4, v1, v7

    .line 210
    sget-object v4, Lcom/chartboost/sdk/ab$$;->S_BASE64CHAR:[C

    shr-int/lit8 v5, v0, 0x6

    and-int/lit8 v5, v5, 0x3f

    aget-char v4, v4, v5

    int-to-byte v4, v4

    aput-byte v4, v1, v8

    .line 211
    sget-object v4, Lcom/chartboost/sdk/ab$$;->S_BASE64CHAR:[C

    and-int/lit8 v5, v0, 0x3f

    aget-char v4, v4, v5

    int-to-byte v4, v4

    aput-byte v4, v1, v9

    .line 212
    invoke-virtual {p3, v1, v6, v10}, Ljava/io/OutputStream;->write([BII)V

    .line 213
    add-int/lit8 v3, v3, 0x3

    .line 214
    add-int/lit8 v2, v2, -0x3

    goto :goto_1

    .line 223
    .end local v0    # "i":I
    :cond_3
    if-ne v2, v8, :cond_0

    .line 224
    aget-byte v4, p0, v3

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x8

    add-int/lit8 v5, v3, 0x1

    aget-byte v5, p0, v5

    and-int/lit16 v5, v5, 0xff

    add-int v0, v4, v5

    .line 225
    .restart local v0    # "i":I
    sget-object v4, Lcom/chartboost/sdk/ab$$;->S_BASE64CHAR:[C

    shr-int/lit8 v5, v0, 0xa

    aget-char v4, v4, v5

    int-to-byte v4, v4

    aput-byte v4, v1, v6

    .line 226
    sget-object v4, Lcom/chartboost/sdk/ab$$;->S_BASE64CHAR:[C

    shr-int/lit8 v5, v0, 0x4

    and-int/lit8 v5, v5, 0x3f

    aget-char v4, v4, v5

    int-to-byte v4, v4

    aput-byte v4, v1, v7

    .line 227
    sget-object v4, Lcom/chartboost/sdk/ab$$;->S_BASE64CHAR:[C

    shl-int/lit8 v5, v0, 0x2

    and-int/lit8 v5, v5, 0x3f

    aget-char v4, v4, v5

    int-to-byte v4, v4

    aput-byte v4, v1, v8

    .line 228
    const/16 v4, 0x3d

    aput-byte v4, v1, v9

    .line 229
    invoke-virtual {p3, v1, v6, v10}, Ljava/io/OutputStream;->write([BII)V

    goto/16 :goto_0
.end method

.method public static encode([BIILjava/io/Writer;)V
    .locals 12
    .param p0, "data"    # [B
    .param p1, "off"    # I
    .param p2, "len"    # I
    .param p3, "writer"    # Ljava/io/Writer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v11, 0x4

    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 237
    if-gtz p2, :cond_1

    .line 272
    :cond_0
    :goto_0
    return-void

    .line 238
    :cond_1
    new-array v1, v11, [C

    .line 239
    .local v1, "out":[C
    move v4, p1

    .line 240
    .local v4, "rindex":I
    sub-int v3, p2, p1

    .line 241
    .local v3, "rest":I
    const/4 v2, 0x0

    .line 242
    .local v2, "output":I
    :cond_2
    :goto_1
    if-ge v3, v10, :cond_3

    .line 257
    if-ne v3, v8, :cond_4

    .line 258
    aget-byte v5, p0, v4

    and-int/lit16 v0, v5, 0xff

    .line 259
    .local v0, "i":I
    sget-object v5, Lcom/chartboost/sdk/ab$$;->S_BASE64CHAR:[C

    shr-int/lit8 v6, v0, 0x2

    aget-char v5, v5, v6

    aput-char v5, v1, v7

    .line 260
    sget-object v5, Lcom/chartboost/sdk/ab$$;->S_BASE64CHAR:[C

    shl-int/lit8 v6, v0, 0x4

    and-int/lit8 v6, v6, 0x3f

    aget-char v5, v5, v6

    aput-char v5, v1, v8

    .line 261
    const/16 v5, 0x3d

    aput-char v5, v1, v9

    .line 262
    const/16 v5, 0x3d

    aput-char v5, v1, v10

    .line 263
    invoke-virtual {p3, v1, v7, v11}, Ljava/io/Writer;->write([CII)V

    goto :goto_0

    .line 243
    .end local v0    # "i":I
    :cond_3
    aget-byte v5, p0, v4

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x10

    .line 244
    add-int/lit8 v6, v4, 0x1

    aget-byte v6, p0, v6

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x8

    .line 243
    add-int/2addr v5, v6

    .line 245
    add-int/lit8 v6, v4, 0x2

    aget-byte v6, p0, v6

    and-int/lit16 v6, v6, 0xff

    .line 243
    add-int v0, v5, v6

    .line 246
    .restart local v0    # "i":I
    sget-object v5, Lcom/chartboost/sdk/ab$$;->S_BASE64CHAR:[C

    shr-int/lit8 v6, v0, 0x12

    aget-char v5, v5, v6

    aput-char v5, v1, v7

    .line 247
    sget-object v5, Lcom/chartboost/sdk/ab$$;->S_BASE64CHAR:[C

    shr-int/lit8 v6, v0, 0xc

    and-int/lit8 v6, v6, 0x3f

    aget-char v5, v5, v6

    aput-char v5, v1, v8

    .line 248
    sget-object v5, Lcom/chartboost/sdk/ab$$;->S_BASE64CHAR:[C

    shr-int/lit8 v6, v0, 0x6

    and-int/lit8 v6, v6, 0x3f

    aget-char v5, v5, v6

    aput-char v5, v1, v9

    .line 249
    sget-object v5, Lcom/chartboost/sdk/ab$$;->S_BASE64CHAR:[C

    and-int/lit8 v6, v0, 0x3f

    aget-char v5, v5, v6

    aput-char v5, v1, v10

    .line 250
    invoke-virtual {p3, v1, v7, v11}, Ljava/io/Writer;->write([CII)V

    .line 251
    add-int/lit8 v4, v4, 0x3

    .line 252
    add-int/lit8 v3, v3, -0x3

    .line 253
    add-int/lit8 v2, v2, 0x4

    .line 254
    rem-int/lit8 v5, v2, 0x4c

    if-nez v5, :cond_2

    .line 255
    const-string v5, "\n"

    invoke-virtual {p3, v5}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_1

    .line 264
    .end local v0    # "i":I
    :cond_4
    if-ne v3, v9, :cond_0

    .line 265
    aget-byte v5, p0, v4

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x8

    add-int/lit8 v6, v4, 0x1

    aget-byte v6, p0, v6

    and-int/lit16 v6, v6, 0xff

    add-int v0, v5, v6

    .line 266
    .restart local v0    # "i":I
    sget-object v5, Lcom/chartboost/sdk/ab$$;->S_BASE64CHAR:[C

    shr-int/lit8 v6, v0, 0xa

    aget-char v5, v5, v6

    aput-char v5, v1, v7

    .line 267
    sget-object v5, Lcom/chartboost/sdk/ab$$;->S_BASE64CHAR:[C

    shr-int/lit8 v6, v0, 0x4

    and-int/lit8 v6, v6, 0x3f

    aget-char v5, v5, v6

    aput-char v5, v1, v8

    .line 268
    sget-object v5, Lcom/chartboost/sdk/ab$$;->S_BASE64CHAR:[C

    shl-int/lit8 v6, v0, 0x2

    and-int/lit8 v6, v6, 0x3f

    aget-char v5, v5, v6

    aput-char v5, v1, v9

    .line 269
    const/16 v5, 0x3d

    aput-char v5, v1, v10

    .line 270
    invoke-virtual {p3, v1, v7, v11}, Ljava/io/Writer;->write([CII)V

    goto/16 :goto_0
.end method
