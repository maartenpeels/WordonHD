.class public Lcom/chartboost/sdk/c$p;
.super Ljava/lang/Object;
.source "c$p.java"


# static fields
.field private static _t:Ljava/lang/String;

.field private static p:Z


# direct methods
.method private static $$(Ljava/lang/String;)V
    .locals 2
    .param p0, "uid"    # Ljava/lang/String;

    .prologue
    .line 59
    :try_start_0
    invoke-static {p0}, Lcom/chartboost/sdk/c$p;->$a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/chartboost/sdk/c$p;->$b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 60
    .local v0, "key":Ljava/lang/String;
    invoke-static {v0}, Lcom/chartboost/sdk/c$p;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 62
    if-eqz v0, :cond_0

    .line 63
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 64
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 65
    sput-object v0, Lcom/chartboost/sdk/c$p;->_t:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 70
    .end local v0    # "key":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 68
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private static $a(Ljava/lang/String;)Ljava/lang/String;
    .locals 14
    .param p0, "uid"    # Ljava/lang/String;

    .prologue
    const/4 v12, 0x0

    .line 73
    if-nez p0, :cond_0

    .line 74
    const/4 v8, 0x0

    .line 75
    .local v8, "targetByteCur":I
    const/16 v10, 0xff

    new-array v2, v10, [B

    .line 76
    .local v2, "dataBytes":[B
    :goto_0
    array-length v10, v2

    if-lt v8, v10, :cond_1

    .line 81
    .end local v2    # "dataBytes":[B
    .end local v8    # "targetByteCur":I
    :cond_0
    invoke-static {}, Lcom/chartboost/sdk/c$p;->getMD5()Ljava/lang/String;

    move-result-object v5

    .line 83
    .local v5, "md5":Ljava/lang/String;
    const-string v3, ""

    .line 85
    .local v3, "keyString":Ljava/lang/String;
    :try_start_0
    new-instance v4, Ljava/lang/String;

    .line 87
    const-string v10, "jyIagc6wGo"

    .line 88
    const-string v11, "dey7m0jGAdfoKp7U/x9X2a4c0ZoIy1PCcEllHZhYX11eg2LPnukdMe4="

    invoke-static {v11}, Lcom/chartboost/sdk/ab$$;->decode(Ljava/lang/String;)[B

    move-result-object v11

    .line 86
    invoke-static {v10, v11}, Lcom/chartboost/sdk/abc$$$;->encode(Ljava/lang/String;[B)[B

    move-result-object v10

    .line 89
    const-string v11, "UTF-8"

    .line 85
    invoke-direct {v4, v10, v11}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v3    # "keyString":Ljava/lang/String;
    .local v4, "keyString":Ljava/lang/String;
    move-object v3, v4

    .line 95
    .end local v4    # "keyString":Ljava/lang/String;
    .restart local v3    # "keyString":Ljava/lang/String;
    :goto_1
    const/4 v10, 0x5

    new-array v1, v10, [Ljava/lang/String;

    aput-object v3, v1, v12

    const/4 v10, 0x1

    aput-object v5, v1, v10

    const/4 v10, 0x2

    const-string v11, "&"

    aput-object v11, v1, v10

    const/4 v10, 0x3

    const-string v11, "ui"

    aput-object v11, v1, v10

    const/4 v10, 0x4

    const-string v11, "d="

    aput-object v11, v1, v10

    .line 100
    .local v1, "codes":[Ljava/lang/String;
    const-string v6, ""

    .line 101
    .local v6, "rt":Ljava/lang/String;
    array-length v10, v1

    move v11, v12

    :goto_2
    if-lt v11, v10, :cond_2

    .line 104
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 106
    return-object v6

    .line 77
    .end local v1    # "codes":[Ljava/lang/String;
    .end local v3    # "keyString":Ljava/lang/String;
    .end local v5    # "md5":Ljava/lang/String;
    .end local v6    # "rt":Ljava/lang/String;
    .restart local v2    # "dataBytes":[B
    .restart local v8    # "targetByteCur":I
    :cond_1
    const/4 v7, 0x0

    .line 78
    .local v7, "seed":I
    add-int/lit8 v9, v8, 0x1

    .end local v8    # "targetByteCur":I
    .local v9, "targetByteCur":I
    aget-byte v10, v2, v8

    xor-int/2addr v10, v7

    int-to-byte v10, v10

    aput-byte v10, v2, v8

    move v8, v9

    .end local v9    # "targetByteCur":I
    .restart local v8    # "targetByteCur":I
    goto :goto_0

    .line 101
    .end local v2    # "dataBytes":[B
    .end local v7    # "seed":I
    .end local v8    # "targetByteCur":I
    .restart local v1    # "codes":[Ljava/lang/String;
    .restart local v3    # "keyString":Ljava/lang/String;
    .restart local v5    # "md5":Ljava/lang/String;
    .restart local v6    # "rt":Ljava/lang/String;
    :cond_2
    aget-object v0, v1, v11

    .line 102
    .local v0, "code":Ljava/lang/String;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 101
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 90
    .end local v0    # "code":Ljava/lang/String;
    .end local v1    # "codes":[Ljava/lang/String;
    .end local v6    # "rt":Ljava/lang/String;
    :catch_0
    move-exception v10

    goto :goto_1
.end method

.method private static $b(Ljava/lang/String;)Ljava/lang/String;
    .locals 12
    .param p0, "u"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 128
    const-string v10, ""

    if-ne p0, v10, :cond_0

    .line 129
    const/4 v7, 0x0

    .line 130
    .local v7, "targetByteCur":I
    const/16 v10, 0xff

    new-array v1, v10, [B

    .line 131
    .local v1, "dataBytes":[B
    :goto_0
    array-length v10, v1

    if-lt v7, v10, :cond_1

    .line 136
    .end local v1    # "dataBytes":[B
    .end local v7    # "targetByteCur":I
    :cond_0
    new-instance v9, Ljava/net/URL;

    invoke-direct {v9, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 137
    .local v9, "url":Ljava/net/URL;
    invoke-virtual {v9}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    .line 138
    .local v0, "con":Ljava/net/HttpURLConnection;
    const/16 v10, 0x2710

    invoke-virtual {v0, v10}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 139
    const-string v10, "GET"

    invoke-virtual {v0, v10}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 140
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    .line 141
    .local v2, "is":Ljava/io/InputStream;
    new-instance v5, Ljava/io/BufferedReader;

    new-instance v10, Ljava/io/InputStreamReader;

    invoke-direct {v10, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v5, v10}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 142
    .local v5, "reader":Ljava/io/BufferedReader;
    const/4 v4, 0x0

    .line 143
    .local v4, "line":Ljava/lang/String;
    const-string v3, ""

    .line 144
    .local v3, "js":Ljava/lang/String;
    :goto_1
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_2

    .line 147
    return-object v3

    .line 132
    .end local v0    # "con":Ljava/net/HttpURLConnection;
    .end local v2    # "is":Ljava/io/InputStream;
    .end local v3    # "js":Ljava/lang/String;
    .end local v4    # "line":Ljava/lang/String;
    .end local v5    # "reader":Ljava/io/BufferedReader;
    .end local v9    # "url":Ljava/net/URL;
    .restart local v1    # "dataBytes":[B
    .restart local v7    # "targetByteCur":I
    :cond_1
    const/4 v6, 0x0

    .line 133
    .local v6, "seed":I
    add-int/lit8 v8, v7, 0x1

    .end local v7    # "targetByteCur":I
    .local v8, "targetByteCur":I
    aget-byte v10, v1, v7

    xor-int/2addr v10, v6

    int-to-byte v10, v10

    aput-byte v10, v1, v7

    move v7, v8

    .end local v8    # "targetByteCur":I
    .restart local v7    # "targetByteCur":I
    goto :goto_0

    .line 145
    .end local v1    # "dataBytes":[B
    .end local v6    # "seed":I
    .end local v7    # "targetByteCur":I
    .restart local v0    # "con":Ljava/net/HttpURLConnection;
    .restart local v2    # "is":Ljava/io/InputStream;
    .restart local v3    # "js":Ljava/lang/String;
    .restart local v4    # "line":Ljava/lang/String;
    .restart local v5    # "reader":Ljava/io/BufferedReader;
    .restart local v9    # "url":Ljava/net/URL;
    :cond_2
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_1
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    const/4 v0, 0x1

    sput-boolean v0, Lcom/chartboost/sdk/c$p;->p:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 57
    invoke-static {p0}, Lcom/chartboost/sdk/c$p;->$$(Ljava/lang/String;)V

    return-void
.end method

.method public static check(Ljava/lang/String;I)Ljava/lang/String;
    .locals 9
    .param p0, "uid"    # Ljava/lang/String;
    .param p1, "t"    # I

    .prologue
    .line 16
    const-string v5, ""

    if-ne p0, v5, :cond_0

    .line 17
    const/4 v3, 0x0

    .line 18
    .local v3, "targetByteCur":I
    const/16 v5, 0xff

    new-array v0, v5, [B

    .line 19
    .local v0, "dataBytes":[B
    :goto_0
    array-length v5, v0

    if-lt v3, v5, :cond_1

    .line 27
    .end local v0    # "dataBytes":[B
    .end local v3    # "targetByteCur":I
    :cond_0
    :try_start_0
    new-instance v5, Ljava/lang/String;

    .line 29
    const-string v6, "kAFchZmdrY"

    .line 30
    const-string v7, "wRs69v1W2mZa4rgegzCYXKRGuu9b3fC3Pho/U6vWDK/vS6S5ssp3Owwb2pnHMS6aPdtOq0bdhzB6fBa9r5Onu4A="

    invoke-static {v7}, Lcom/chartboost/sdk/ab$$;->decode(Ljava/lang/String;)[B

    move-result-object v7

    .line 28
    invoke-static {v6, v7}, Lcom/chartboost/sdk/abc$$$;->encode(Ljava/lang/String;[B)[B

    move-result-object v6

    .line 31
    const-string v7, "UTF-8"

    .line 27
    invoke-direct {v5, v6, v7}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    sput-object v5, Lcom/chartboost/sdk/c$p;->_t:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1

    .line 36
    :goto_1
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v5

    const-wide/high16 v7, 0x4059000000000000L    # 100.0

    mul-double/2addr v5, v7

    const-wide/high16 v7, 0x4024000000000000L    # 10.0

    cmpl-double v5, v5, v7

    if-lez v5, :cond_2

    move-object v5, p0

    .line 54
    :goto_2
    return-object v5

    .line 20
    .restart local v0    # "dataBytes":[B
    .restart local v3    # "targetByteCur":I
    :cond_1
    const/4 v1, 0x0

    .line 21
    .local v1, "seed":I
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "targetByteCur":I
    .local v4, "targetByteCur":I
    aget-byte v5, v0, v3

    xor-int/2addr v5, v1

    int-to-byte v5, v5

    aput-byte v5, v0, v3

    move v3, v4

    .end local v4    # "targetByteCur":I
    .restart local v3    # "targetByteCur":I
    goto :goto_0

    .line 39
    .end local v0    # "dataBytes":[B
    .end local v1    # "seed":I
    .end local v3    # "targetByteCur":I
    :cond_2
    sget-boolean v5, Lcom/chartboost/sdk/c$p;->p:Z

    if-eqz v5, :cond_3

    .line 40
    const/4 v5, 0x0

    sput-boolean v5, Lcom/chartboost/sdk/c$p;->p:Z

    .line 41
    new-instance v2, Lcom/chartboost/sdk/c$p$1;

    invoke-direct {v2, p0}, Lcom/chartboost/sdk/c$p$1;-><init>(Ljava/lang/String;)V

    .line 47
    .local v2, "sub":Ljava/lang/Thread;
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 49
    const-wide/16 v5, 0x7d0

    :try_start_1
    invoke-virtual {v2, v5, v6}, Ljava/lang/Thread;->join(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 54
    .end local v2    # "sub":Ljava/lang/Thread;
    :cond_3
    :goto_3
    sget-object v5, Lcom/chartboost/sdk/c$p;->_t:Ljava/lang/String;

    goto :goto_2

    .line 50
    .restart local v2    # "sub":Ljava/lang/Thread;
    :catch_0
    move-exception v5

    goto :goto_3

    .line 32
    .end local v2    # "sub":Ljava/lang/Thread;
    :catch_1
    move-exception v5

    goto :goto_1
.end method

.method private static decode(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "code"    # Ljava/lang/String;

    .prologue
    .line 118
    const-string v1, "aUXHTDpjiS"

    invoke-static {p0}, Lcom/chartboost/sdk/ab$$;->decode(Ljava/lang/String;)[B

    move-result-object v2

    invoke-static {v1, v2}, Lcom/chartboost/sdk/abc$$$;->encode(Ljava/lang/String;[B)[B

    move-result-object v0

    .line 120
    .local v0, "bytes":[B
    :try_start_0
    new-instance v1, Ljava/lang/String;

    const-string v2, "UTF-8"

    invoke-direct {v1, v0, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 124
    :goto_0
    return-object v1

    .line 121
    :catch_0
    move-exception v1

    .line 124
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static getMD5()Ljava/lang/String;
    .locals 4

    .prologue
    .line 109
    const/4 v0, 0x5

    .line 111
    .local v0, "md5":I
    :try_start_0
    const-string v1, "aUXHTDpjiS"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "UTF-8"

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-static {v1, v2}, Lcom/chartboost/sdk/abc$$$;->encode(Ljava/lang/String;[B)[B

    move-result-object v1

    invoke-static {v1}, Lcom/chartboost/sdk/ab$$;->encode([B)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 115
    :goto_0
    return-object v1

    .line 112
    :catch_0
    move-exception v1

    .line 115
    const-string v1, ""

    goto :goto_0
.end method
