.class Lcom/jirbo/adcolony/ai;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 237
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 255
    const-string v0, "SHA-1"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 256
    const-string v1, "iso-8859-1"

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Ljava/security/MessageDigest;->update([BII)V

    .line 257
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    .line 258
    invoke-static {v0}, Lcom/jirbo/adcolony/ai;->a([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static a([B)Ljava/lang/String;
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 241
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 242
    array-length v1, p0

    move v2, v8

    :goto_0
    if-ge v2, v1, :cond_1

    aget-byte v3, p0, v2

    .line 243
    ushr-int/lit8 v4, v3, 0x4

    and-int/lit8 v4, v4, 0xf

    move v5, v4

    move v4, v8

    .line 246
    :goto_1
    if-ltz v5, :cond_0

    const/16 v6, 0x9

    if-gt v5, v6, :cond_0

    add-int/lit8 v5, v5, 0x30

    int-to-char v5, v5

    :goto_2
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 247
    and-int/lit8 v5, v3, 0xf

    .line 248
    add-int/lit8 v6, v4, 0x1

    const/4 v7, 0x1

    if-lt v4, v7, :cond_2

    .line 242
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 246
    :cond_0
    const/16 v6, 0xa

    sub-int/2addr v5, v6

    add-int/lit8 v5, v5, 0x61

    int-to-char v5, v5

    goto :goto_2

    .line 250
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2
    move v4, v6

    goto :goto_1
.end method
