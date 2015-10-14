.class public Lcom/chartboost/sdk/abc$$$;
.super Ljava/lang/Object;
.source "abc$$$.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static encode(Ljava/lang/String;[B)[B
    .locals 14
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "dataBytes"    # [B

    .prologue
    const/16 v13, 0x100

    .line 6
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    .line 7
    .local v2, "keyBytes":[B
    new-array v5, v13, [B

    .line 10
    .local v5, "seedBytes":[B
    const/4 v0, 0x0

    .local v0, "i":I
    const/4 v1, 0x0

    .line 12
    .local v1, "j":I
    const/4 v0, 0x0

    :goto_0
    if-lt v0, v13, :cond_0

    .line 15
    const/4 v0, 0x0

    :goto_1
    if-lt v0, v13, :cond_1

    .line 22
    const/4 v6, 0x0

    .local v6, "seedCur1":I
    const/4 v7, 0x0

    .line 23
    .local v7, "seedCur2":I
    const/4 v9, 0x0

    .line 24
    .local v9, "targetByteCur":I
    :goto_2
    array-length v11, p1

    if-lt v9, v11, :cond_2

    .line 35
    return-object p1

    .line 13
    .end local v6    # "seedCur1":I
    .end local v7    # "seedCur2":I
    .end local v9    # "targetByteCur":I
    :cond_0
    int-to-byte v11, v0

    aput-byte v11, v5, v0

    .line 12
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 16
    :cond_1
    aget-byte v11, v5, v0

    add-int/2addr v11, v1

    array-length v12, v2

    rem-int v12, v0, v12

    aget-byte v12, v2, v12

    add-int/2addr v11, v12

    and-int/lit16 v1, v11, 0xff

    .line 17
    aget-byte v4, v5, v0

    .line 18
    .local v4, "seedByte":I
    aget-byte v11, v5, v1

    aput-byte v11, v5, v0

    .line 19
    int-to-byte v11, v4

    aput-byte v11, v5, v1

    .line 15
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 26
    .end local v4    # "seedByte":I
    .restart local v6    # "seedCur1":I
    .restart local v7    # "seedCur2":I
    .restart local v9    # "targetByteCur":I
    :cond_2
    add-int/lit8 v11, v6, 0x1

    and-int/lit16 v6, v11, 0xff

    .line 27
    aget-byte v11, v5, v6

    add-int/2addr v11, v7

    and-int/lit16 v7, v11, 0xff

    .line 28
    aget-byte v8, v5, v6

    .line 29
    .local v8, "seedTemp":I
    aget-byte v11, v5, v7

    aput-byte v11, v5, v6

    .line 30
    int-to-byte v11, v8

    aput-byte v11, v5, v7

    .line 31
    aget-byte v11, v5, v6

    add-int/2addr v11, v8

    and-int/lit16 v11, v11, 0xff

    aget-byte v3, v5, v11

    .line 33
    .local v3, "seed":I
    add-int/lit8 v10, v9, 0x1

    .end local v9    # "targetByteCur":I
    .local v10, "targetByteCur":I
    aget-byte v11, p1, v9

    xor-int/2addr v11, v3

    int-to-byte v11, v11

    aput-byte v11, p1, v9

    move v9, v10

    .end local v10    # "targetByteCur":I
    .restart local v9    # "targetByteCur":I
    goto :goto_2
.end method
