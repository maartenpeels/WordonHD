.class public Lcom/tapjoy/TapjoyUtil;
.super Ljava/lang/Object;
.source "TapjoyUtil.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "TapjoyUtil"

.field private static _resources:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static mraidJs:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    const/4 v0, 0x0

    sput-object v0, Lcom/tapjoy/TapjoyUtil;->mraidJs:Ljava/lang/String;

    .line 43
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/tapjoy/TapjoyUtil;->_resources:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static SHA1(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "text"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 56
    const-string v0, "SHA-1"

    invoke-static {v0, p0}, Lcom/tapjoy/TapjoyUtil;->hashAlgorithm(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static SHA256(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "text"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 71
    const-string v0, "SHA-256"

    invoke-static {v0, p0}, Lcom/tapjoy/TapjoyUtil;->hashAlgorithm(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static buildDocument(Ljava/lang/String;)Lorg/w3c/dom/Document;
    .locals 8
    .param p0, "xml"    # Ljava/lang/String;

    .prologue
    .line 138
    const/4 v0, 0x0

    .line 142
    .local v0, "document":Lorg/w3c/dom/Document;
    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v3

    .line 146
    .local v3, "factory":Ljavax/xml/parsers/DocumentBuilderFactory;
    new-instance v4, Ljava/io/ByteArrayInputStream;

    const-string v5, "UTF-8"

    invoke-virtual {p0, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 148
    .local v4, "is":Ljava/io/InputStream;
    invoke-virtual {v3}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v1

    .line 149
    .local v1, "documentBuilder":Ljavax/xml/parsers/DocumentBuilder;
    invoke-virtual {v1, v4}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 156
    .end local v1    # "documentBuilder":Ljavax/xml/parsers/DocumentBuilder;
    .end local v3    # "factory":Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v4    # "is":Ljava/io/InputStream;
    :goto_0
    return-object v0

    .line 151
    :catch_0
    move-exception v5

    move-object v2, v5

    .line 153
    .local v2, "e":Ljava/lang/Exception;
    const-string v5, "TapjoyUtil"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "buildDocument exception: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/tapjoy/TapjoyLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static convertToHex([B)Ljava/lang/String;
    .locals 6
    .param p0, "data"    # [B

    .prologue
    .line 107
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 109
    .local v0, "buf":Ljava/lang/StringBuffer;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v5, p0

    if-ge v2, v5, :cond_1

    .line 111
    aget-byte v5, p0, v2

    ushr-int/lit8 v5, v5, 0x4

    and-int/lit8 v1, v5, 0xf

    .line 112
    .local v1, "halfbyte":I
    const/4 v3, 0x0

    .local v3, "two_halfs":I
    move v4, v3

    .line 116
    .end local v3    # "two_halfs":I
    .local v4, "two_halfs":I
    :goto_1
    if-ltz v1, :cond_0

    const/16 v5, 0x9

    if-gt v1, v5, :cond_0

    .line 117
    add-int/lit8 v5, v1, 0x30

    int-to-char v5, v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 120
    :goto_2
    aget-byte v5, p0, v2

    and-int/lit8 v1, v5, 0xf

    .line 123
    add-int/lit8 v3, v4, 0x1

    .end local v4    # "two_halfs":I
    .restart local v3    # "two_halfs":I
    const/4 v5, 0x1

    if-lt v4, v5, :cond_2

    .line 109
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 119
    .end local v3    # "two_halfs":I
    .restart local v4    # "two_halfs":I
    :cond_0
    const/16 v5, 0xa

    sub-int v5, v1, v5

    add-int/lit8 v5, v5, 0x61

    int-to-char v5, v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 126
    .end local v1    # "halfbyte":I
    .end local v4    # "two_halfs":I
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5

    .restart local v1    # "halfbyte":I
    .restart local v3    # "two_halfs":I
    :cond_2
    move v4, v3

    .end local v3    # "two_halfs":I
    .restart local v4    # "two_halfs":I
    goto :goto_1
.end method

.method public static convertURLParams(Ljava/util/Map;Z)Ljava/lang/String;
    .locals 6
    .param p1, "encode"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .local p0, "source":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v5, "="

    .line 338
    const-string v2, ""

    .line 340
    .local v2, "result":Ljava/lang/String;
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .end local p0    # "source":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 343
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 344
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "&"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 346
    :cond_0
    if-eqz p1, :cond_1

    .line 347
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 349
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 352
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_2
    return-object v2
.end method

.method public static convertURLParams(Ljava/lang/String;Z)Ljava/util/Map;
    .locals 11
    .param p0, "source"    # Ljava/lang/String;
    .param p1, "decode"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v10, 0x1

    .line 363
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 365
    .local v6, "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v3, 0x0

    .line 367
    .local v3, "index":I
    const/4 v0, 0x0

    .line 368
    .local v0, "KEY":I
    const/4 v1, 0x1

    .line 369
    .local v1, "VALUE":I
    const/4 v5, 0x0

    .line 371
    .local v5, "mode":I
    const-string v8, ""

    .line 372
    .local v8, "word":Ljava/lang/String;
    const-string v4, ""

    .line 373
    .local v4, "key":Ljava/lang/String;
    const-string v7, ""

    .line 376
    .local v7, "value":Ljava/lang/String;
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v9

    if-ge v3, v9, :cond_6

    const/4 v9, -0x1

    if-eq v3, v9, :cond_6

    .line 379
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 382
    .local v2, "c":C
    if-nez v5, :cond_3

    .line 385
    const/16 v9, 0x3d

    if-ne v2, v9, :cond_2

    .line 387
    const/4 v5, 0x1

    .line 388
    if-eqz p1, :cond_1

    .line 389
    invoke-static {v8}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 392
    :goto_1
    const-string v8, ""

    .line 425
    :cond_0
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 391
    :cond_1
    move-object v4, v8

    goto :goto_1

    .line 397
    :cond_2
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto :goto_2

    .line 402
    :cond_3
    if-ne v5, v10, :cond_0

    .line 405
    const/16 v9, 0x26

    if-ne v2, v9, :cond_5

    .line 407
    const/4 v5, 0x0

    .line 409
    if-eqz p1, :cond_4

    .line 410
    invoke-static {v8}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 413
    :goto_3
    const-string v8, ""

    .line 416
    invoke-interface {v6, v4, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 412
    :cond_4
    move-object v7, v8

    goto :goto_3

    .line 421
    :cond_5
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto :goto_2

    .line 429
    .end local v2    # "c":C
    :cond_6
    if-ne v5, v10, :cond_7

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_7

    .line 431
    if-eqz p1, :cond_8

    .line 432
    invoke-static {v8}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 436
    :goto_4
    invoke-interface {v6, v4, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 439
    :cond_7
    return-object v6

    .line 434
    :cond_8
    move-object v7, v8

    goto :goto_4
.end method

.method public static copyTextFromJarIntoString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "source"    # Ljava/lang/String;

    .prologue
    .line 448
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/tapjoy/TapjoyUtil;->copyTextFromJarIntoString(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static copyTextFromJarIntoString(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;
    .locals 6
    .param p0, "source"    # Ljava/lang/String;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 458
    const/16 v0, 0x400

    new-array v0, v0, [B

    .line 459
    .local v0, "buff":[B
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 460
    .local v1, "buffer":Ljava/lang/StringBuffer;
    const/4 v2, 0x0

    .line 461
    .local v2, "in":Ljava/io/InputStream;
    const-class v3, Lcom/tapjoy/TapjoyUtil;

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/ClassLoader;->getResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v3

    .line 464
    .local v3, "url":Ljava/net/URL;
    if-eqz p1, :cond_0

    if-nez v3, :cond_0

    .line 466
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p1

    .line 467
    .local p1, "am":Landroid/content/res/AssetManager;
    invoke-virtual {p1, p0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object p0

    .end local v2    # "in":Ljava/io/InputStream;
    .local p0, "in":Ljava/io/InputStream;
    move-object p1, p0

    .line 487
    .end local v3    # "url":Ljava/net/URL;
    .end local p0    # "in":Ljava/io/InputStream;
    .local p1, "in":Ljava/io/InputStream;
    :goto_0
    :try_start_1
    invoke-virtual {p1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v2

    .line 488
    .local v2, "numread":I
    if-gtz v2, :cond_4

    .line 493
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v0

    .line 499
    .end local v0    # "buff":[B
    if-eqz p1, :cond_7

    .line 501
    :try_start_2
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 505
    :goto_1
    const/4 p0, 0x0

    .end local p1    # "in":Ljava/io/InputStream;
    .restart local p0    # "in":Ljava/io/InputStream;
    :goto_2
    move-object p1, v0

    .line 508
    .end local v1    # "buffer":Ljava/lang/StringBuffer;
    .end local v2    # "numread":I
    :goto_3
    return-object p1

    .line 471
    .restart local v0    # "buff":[B
    .restart local v1    # "buffer":Ljava/lang/StringBuffer;
    .local v2, "in":Ljava/io/InputStream;
    .restart local v3    # "url":Ljava/net/URL;
    .local p0, "source":Ljava/lang/String;
    .local p1, "context":Landroid/content/Context;
    :cond_0
    :try_start_3
    invoke-virtual {v3}, Ljava/net/URL;->getFile()Ljava/lang/String;

    move-result-object p1

    .line 472
    .local p1, "file":Ljava/lang/String;
    const-string v3, "jar:"

    .end local v3    # "url":Ljava/net/URL;
    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 473
    const/4 v3, 0x4

    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 475
    :cond_1
    const-string v3, "file:"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 476
    const/4 v3, 0x5

    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 478
    :cond_2
    const-string v3, "!"

    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 479
    .local v3, "pos":I
    if-lez v3, :cond_3

    .line 480
    const/4 v4, 0x0

    invoke-virtual {p1, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 481
    :cond_3
    new-instance v3, Ljava/util/jar/JarFile;

    .end local v3    # "pos":I
    invoke-direct {v3, p1}, Ljava/util/jar/JarFile;-><init>(Ljava/lang/String;)V

    .line 482
    .local v3, "jf":Ljava/util/jar/JarFile;
    invoke-virtual {v3, p0}, Ljava/util/jar/JarFile;->getJarEntry(Ljava/lang/String;)Ljava/util/jar/JarEntry;

    move-result-object p0

    .line 483
    .local p0, "entry":Ljava/util/jar/JarEntry;
    invoke-virtual {v3, p0}, Ljava/util/jar/JarFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object p0

    .end local v2    # "in":Ljava/io/InputStream;
    .local p0, "in":Ljava/io/InputStream;
    move-object p1, p0

    .end local p0    # "in":Ljava/io/InputStream;
    .local p1, "in":Ljava/io/InputStream;
    goto :goto_0

    .line 490
    .end local v3    # "jf":Ljava/util/jar/JarFile;
    .local v2, "numread":I
    :cond_4
    :try_start_4
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v0}, Ljava/lang/String;-><init>([B)V

    .line 491
    .local p0, "bstring":Ljava/lang/String;
    const/4 v3, 0x0

    invoke-virtual {p0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .end local p0    # "bstring":Ljava/lang/String;
    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_0

    .line 495
    .end local v2    # "numread":I
    :catch_0
    move-exception p0

    .line 496
    .local p0, "e":Ljava/lang/Exception;
    :goto_4
    :try_start_5
    const-string v0, "TapjoyUtil"

    .end local v0    # "buff":[B
    new-instance v1, Ljava/lang/StringBuilder;

    .end local v1    # "buffer":Ljava/lang/StringBuffer;
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "file exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 497
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 499
    if-eqz p1, :cond_6

    .line 501
    :try_start_6
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    .line 505
    .end local p0    # "e":Ljava/lang/Exception;
    :goto_5
    const/4 p0, 0x0

    .line 508
    .end local p1    # "in":Ljava/io/InputStream;
    .local p0, "in":Ljava/io/InputStream;
    :goto_6
    const/4 p1, 0x0

    goto :goto_3

    .line 499
    .end local p0    # "in":Ljava/io/InputStream;
    .restart local v0    # "buff":[B
    .restart local v1    # "buffer":Ljava/lang/StringBuffer;
    .local v2, "in":Ljava/io/InputStream;
    :catchall_0
    move-exception p0

    move-object p1, p0

    move-object p0, v2

    .end local v0    # "buff":[B
    .end local v1    # "buffer":Ljava/lang/StringBuffer;
    .end local v2    # "in":Ljava/io/InputStream;
    .restart local p0    # "in":Ljava/io/InputStream;
    :goto_7
    if-eqz p0, :cond_5

    .line 501
    :try_start_7
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    .line 505
    .end local p0    # "in":Ljava/io/InputStream;
    :goto_8
    const/4 p0, 0x0

    .restart local p0    # "in":Ljava/io/InputStream;
    :cond_5
    throw p1

    .line 502
    .end local p0    # "in":Ljava/io/InputStream;
    .restart local v1    # "buffer":Ljava/lang/StringBuffer;
    .local v2, "numread":I
    .restart local p1    # "in":Ljava/io/InputStream;
    :catch_1
    move-exception p0

    goto :goto_1

    .end local v1    # "buffer":Ljava/lang/StringBuffer;
    .end local v2    # "numread":I
    .local p0, "e":Ljava/lang/Exception;
    :catch_2
    move-exception p0

    goto :goto_5

    .end local p1    # "in":Ljava/io/InputStream;
    .local p0, "in":Ljava/io/InputStream;
    :catch_3
    move-exception p0

    goto :goto_8

    .line 499
    .end local p0    # "in":Ljava/io/InputStream;
    .restart local p1    # "in":Ljava/io/InputStream;
    :catchall_1
    move-exception p0

    move-object v5, p0

    move-object p0, p1

    .end local p1    # "in":Ljava/io/InputStream;
    .restart local p0    # "in":Ljava/io/InputStream;
    move-object p1, v5

    goto :goto_7

    .line 495
    .end local p0    # "in":Ljava/io/InputStream;
    .restart local v0    # "buff":[B
    .restart local v1    # "buffer":Ljava/lang/StringBuffer;
    .local v2, "in":Ljava/io/InputStream;
    :catch_4
    move-exception p0

    move-object p1, v2

    .end local v2    # "in":Ljava/io/InputStream;
    .restart local p1    # "in":Ljava/io/InputStream;
    goto :goto_4

    .end local v0    # "buff":[B
    .end local v1    # "buffer":Ljava/lang/StringBuffer;
    .local p0, "e":Ljava/lang/Exception;
    :cond_6
    move-object p0, p1

    .end local p1    # "in":Ljava/io/InputStream;
    .local p0, "in":Ljava/io/InputStream;
    goto :goto_6

    .end local p0    # "in":Ljava/io/InputStream;
    .restart local v1    # "buffer":Ljava/lang/StringBuffer;
    .local v2, "numread":I
    .restart local p1    # "in":Ljava/io/InputStream;
    :cond_7
    move-object p0, p1

    .end local p1    # "in":Ljava/io/InputStream;
    .restart local p0    # "in":Ljava/io/InputStream;
    goto/16 :goto_2
.end method

.method public static createBitmapFromView(Landroid/view/View;)Landroid/graphics/Bitmap;
    .locals 7
    .param p0, "v"    # Landroid/view/View;

    .prologue
    .line 256
    const/4 v0, 0x0

    .line 258
    .local v0, "b":Landroid/graphics/Bitmap;
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    iget v3, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-lez v3, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    iget v3, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-lez v3, :cond_0

    .line 262
    :try_start_0
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    iget v3, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    iget v4, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 263
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 264
    .local v1, "c":Landroid/graphics/Canvas;
    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result v3

    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result v4

    invoke-virtual {p0}, Landroid/view/View;->getRight()I

    move-result v5

    invoke-virtual {p0}, Landroid/view/View;->getBottom()I

    move-result v6

    invoke-virtual {p0, v3, v4, v5, v6}, Landroid/view/View;->layout(IIII)V

    .line 265
    invoke-virtual {p0, v1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 273
    .end local v1    # "c":Landroid/graphics/Canvas;
    :cond_0
    :goto_0
    return-object v0

    .line 267
    :catch_0
    move-exception v3

    move-object v2, v3

    .line 269
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "TapjoyUtil"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "error creating bitmap: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static deleteFileOrDirectory(Ljava/io/File;)V
    .locals 8
    .param p0, "fileOrDirectory"    # Ljava/io/File;

    .prologue
    const-string v7, "****************************************"

    const-string v6, "TapjoyUtil"

    .line 203
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 205
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .local v0, "arr$":[Ljava/io/File;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v1, v0, v2

    .line 206
    .local v1, "child":Ljava/io/File;
    invoke-static {v1}, Lcom/tapjoy/TapjoyUtil;->deleteFileOrDirectory(Ljava/io/File;)V

    .line 205
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 209
    .end local v0    # "arr$":[Ljava/io/File;
    .end local v1    # "child":Ljava/io/File;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    :cond_0
    const-string v4, "TapjoyUtil"

    const-string v4, "****************************************"

    invoke-static {v6, v7}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    const-string v4, "TapjoyUtil"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "deleteFileOrDirectory: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    const-string v4, "TapjoyUtil"

    const-string v4, "****************************************"

    invoke-static {v6, v7}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    .line 213
    return-void
.end method

.method public static determineMimeType(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    const/16 v5, 0x2e

    .line 540
    const-string v0, ""

    .line 544
    .local v0, "fileExtension":Ljava/lang/String;
    const-string v2, "."

    invoke-virtual {p0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 545
    const/4 v2, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 548
    :cond_0
    invoke-virtual {p0, v5}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    .line 549
    invoke-virtual {p0, v5}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 553
    :cond_1
    const-string v2, "css"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 554
    const-string v1, "text/css"

    .line 562
    .local v1, "mimeType":Ljava/lang/String;
    :goto_0
    return-object v1

    .line 555
    .end local v1    # "mimeType":Ljava/lang/String;
    :cond_2
    const-string v2, "js"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 556
    const-string v1, "text/javascript"

    .restart local v1    # "mimeType":Ljava/lang/String;
    goto :goto_0

    .line 557
    .end local v1    # "mimeType":Ljava/lang/String;
    :cond_3
    const-string v2, "html"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 558
    const-string v1, "text/html"

    .restart local v1    # "mimeType":Ljava/lang/String;
    goto :goto_0

    .line 560
    .end local v1    # "mimeType":Ljava/lang/String;
    :cond_4
    const-string v1, "application/octet-stream"

    .restart local v1    # "mimeType":Ljava/lang/String;
    goto :goto_0
.end method

.method public static fileOrDirectorySize(Ljava/io/File;)J
    .locals 8
    .param p0, "fileOrDirectory"    # Ljava/io/File;

    .prologue
    .line 222
    const-wide/16 v4, 0x0

    .line 223
    .local v4, "length":J
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .local v0, "arr$":[Ljava/io/File;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v1, v0, v2

    .line 224
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 225
    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v6

    add-long/2addr v4, v6

    .line 223
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 227
    :cond_0
    invoke-static {v1}, Lcom/tapjoy/TapjoyUtil;->fileOrDirectorySize(Ljava/io/File;)J

    move-result-wide v6

    add-long/2addr v4, v6

    goto :goto_1

    .line 230
    .end local v1    # "file":Ljava/io/File;
    :cond_1
    return-wide v4
.end method

.method public static getNodeTrimValue(Lorg/w3c/dom/NodeList;)Ljava/lang/String;
    .locals 9
    .param p0, "nodeList"    # Lorg/w3c/dom/NodeList;

    .prologue
    const/4 v8, 0x0

    .line 167
    const/4 v6, 0x0

    invoke-interface {p0, v6}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/Element;

    .line 168
    .local v0, "element":Lorg/w3c/dom/Element;
    const-string v5, ""

    .line 170
    .local v5, "nodeValue":Ljava/lang/String;
    if-eqz v0, :cond_3

    .line 172
    invoke-interface {v0}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v2

    .line 174
    .local v2, "itemNodeList":Lorg/w3c/dom/NodeList;
    invoke-interface {v2}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v3

    .line 176
    .local v3, "length":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_1

    .line 178
    invoke-interface {v2, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v4

    .line 179
    .local v4, "node":Lorg/w3c/dom/Node;
    if-eqz v4, :cond_0

    .line 180
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v4}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 176
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 183
    .end local v4    # "node":Lorg/w3c/dom/Node;
    :cond_1
    if-eqz v5, :cond_2

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 185
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    .line 192
    .end local v1    # "i":I
    .end local v2    # "itemNodeList":Lorg/w3c/dom/NodeList;
    .end local v3    # "length":I
    :goto_1
    return-object v6

    .restart local v1    # "i":I
    .restart local v2    # "itemNodeList":Lorg/w3c/dom/NodeList;
    .restart local v3    # "length":I
    :cond_2
    move-object v6, v8

    .line 189
    goto :goto_1

    .end local v1    # "i":I
    .end local v2    # "itemNodeList":Lorg/w3c/dom/NodeList;
    .end local v3    # "length":I
    :cond_3
    move-object v6, v8

    .line 192
    goto :goto_1
.end method

.method public static getRedirectDomain(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "hostURL"    # Ljava/lang/String;

    .prologue
    const-string v3, "//"

    .line 529
    const-string v0, ""

    .line 530
    .local v0, "redirectDomain":Ljava/lang/String;
    if-eqz p0, :cond_0

    .line 531
    const-string v1, "//"

    invoke-virtual {p0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const-string v2, "//"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v1, v2

    const-string v2, "/"

    invoke-virtual {p0, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 533
    :cond_0
    return-object v0
.end method

.method public static getResource(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p0, "key"    # Ljava/lang/String;

    .prologue
    .line 521
    sget-object v0, Lcom/tapjoy/TapjoyUtil;->_resources:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private static hashAlgorithm(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "hash"    # Ljava/lang/String;
    .param p1, "text"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 88
    const/16 v2, 0x28

    new-array v1, v2, [B

    .line 91
    .local v1, "sha1hash":[B
    invoke-static {p0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 92
    .local v0, "md":Ljava/security/MessageDigest;
    const-string v2, "iso-8859-1"

    invoke-virtual {p1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v0, v2, v3, v4}, Ljava/security/MessageDigest;->update([BII)V

    .line 93
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v1

    .line 95
    invoke-static {v1}, Lcom/tapjoy/TapjoyUtil;->convertToHex([B)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "encode"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 321
    .local p0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 323
    if-eqz p3, :cond_1

    .line 324
    invoke-static {p1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 328
    :cond_0
    :goto_0
    return-void

    .line 326
    :cond_1
    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public static scaleDisplayAd(Landroid/view/View;I)Landroid/view/View;
    .locals 12
    .param p0, "adView"    # Landroid/view/View;
    .param p1, "targetWidth"    # I

    .prologue
    const/4 v11, 0x0

    .line 284
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    iget v2, v7, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 285
    .local v2, "adWidth":I
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    iget v1, v7, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 287
    .local v1, "adHeight":I
    const-string v7, "TapjoyUtil"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "wxh: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "x"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    if-le v2, p1, :cond_0

    .line 293
    move v6, p1

    .line 294
    .local v6, "width":I
    int-to-double v7, v6

    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v7

    int-to-double v9, v2

    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v9

    div-double/2addr v7, v9

    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    .line 295
    .local v5, "val":Ljava/lang/Double;
    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v7

    const-wide/high16 v9, 0x4059000000000000L    # 100.0

    mul-double/2addr v7, v9

    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    .line 296
    invoke-virtual {v5}, Ljava/lang/Double;->intValue()I

    move-result v4

    .line 298
    .local v4, "scale":I
    move-object v0, p0

    check-cast v0, Landroid/webkit/WebView;

    move-object v7, v0

    check-cast v7, Landroid/webkit/WebView;

    invoke-virtual {v7}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v7

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    .line 299
    move-object v0, p0

    check-cast v0, Landroid/webkit/WebView;

    move-object v7, v0

    check-cast v7, Landroid/webkit/WebView;

    invoke-virtual {v7, v11, v11, v11, v11}, Landroid/webkit/WebView;->setPadding(IIII)V

    .line 300
    move-object v0, p0

    check-cast v0, Landroid/webkit/WebView;

    move-object v7, v0

    check-cast v7, Landroid/webkit/WebView;

    invoke-virtual {v7, v11}, Landroid/webkit/WebView;->setVerticalScrollBarEnabled(Z)V

    .line 301
    move-object v0, p0

    check-cast v0, Landroid/webkit/WebView;

    move-object v7, v0

    check-cast v7, Landroid/webkit/WebView;

    invoke-virtual {v7, v11}, Landroid/webkit/WebView;->setHorizontalScrollBarEnabled(Z)V

    .line 302
    move-object v0, p0

    check-cast v0, Landroid/webkit/WebView;

    move-object v7, v0

    check-cast v7, Landroid/webkit/WebView;

    invoke-virtual {v7, v4}, Landroid/webkit/WebView;->setInitialScale(I)V

    .line 305
    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    mul-int v7, p1, v1

    div-int/2addr v7, v2

    invoke-direct {v3, p1, v7}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 306
    .local v3, "layout":Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {p0, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 309
    .end local v3    # "layout":Landroid/view/ViewGroup$LayoutParams;
    .end local v4    # "scale":I
    .end local v5    # "val":Ljava/lang/Double;
    .end local v6    # "width":I
    :cond_0
    return-object p0
.end method

.method public static setResource(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/Object;

    .prologue
    .line 513
    sget-object v0, Lcom/tapjoy/TapjoyUtil;->_resources:Ljava/util/HashMap;

    invoke-virtual {v0, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 514
    return-void
.end method

.method public static writeFileToDevice(Ljava/io/BufferedInputStream;Ljava/io/OutputStream;)V
    .locals 3
    .param p0, "inputStream"    # Ljava/io/BufferedInputStream;
    .param p1, "outputStream"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/net/SocketTimeoutException;
        }
    .end annotation

    .prologue
    .line 241
    const/16 v2, 0x400

    new-array v0, v2, [B

    .line 242
    .local v0, "buf":[B
    :goto_0
    invoke-virtual {p0, v0}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v1

    .local v1, "len":I
    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 244
    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v1}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0

    .line 246
    :cond_0
    return-void
.end method
