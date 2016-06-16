.class public Lcom/tapjoy/extensions/TapjoyLoadResourceFunc;
.super Ljava/lang/Object;
.source "TapjoyLoadResourceFunc.java"

# interfaces
.implements Lcom/adobe/fre/FREFunction;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/adobe/fre/FREContext;[Lcom/adobe/fre/FREObject;)Lcom/adobe/fre/FREObject;
    .locals 7
    .param p1, "arg0"    # Lcom/adobe/fre/FREContext;
    .param p2, "arg1"    # [Lcom/adobe/fre/FREObject;

    .prologue
    .line 17
    array-length v5, p2

    const/4 v6, 0x2

    if-lt v5, v6, :cond_0

    .line 19
    const/4 v5, 0x0

    :try_start_0
    aget-object v5, p2, v5

    invoke-static {v5}, Lcom/tapjoy/extensions/ExtensionUtils;->getString(Lcom/adobe/fre/FREObject;)Ljava/lang/String;

    move-result-object v4

    .line 20
    .local v4, "key":Ljava/lang/String;
    const/4 v5, 0x1

    aget-object v0, p2, v5

    check-cast v0, Lcom/adobe/fre/FREByteArray;

    .line 21
    .local v0, "ba":Lcom/adobe/fre/FREByteArray;
    invoke-virtual {v0}, Lcom/adobe/fre/FREByteArray;->acquire()V

    .line 22
    invoke-virtual {v0}, Lcom/adobe/fre/FREByteArray;->getBytes()Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 23
    .local v1, "bb":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Lcom/adobe/fre/FREByteArray;->getLength()J

    move-result-wide v5

    long-to-int v5, v5

    new-array v2, v5, [B

    .line 24
    .local v2, "bytes":[B
    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 25
    invoke-virtual {v0}, Lcom/adobe/fre/FREByteArray;->release()V

    .line 26
    invoke-static {v4, v2}, Lcom/tapjoy/TapjoyUtil;->setResource(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 32
    .end local v0    # "ba":Lcom/adobe/fre/FREByteArray;
    .end local v1    # "bb":Ljava/nio/ByteBuffer;
    .end local v2    # "bytes":[B
    .end local v4    # "key":Ljava/lang/String;
    :cond_0
    :goto_0
    const/4 v5, 0x0

    return-object v5

    .line 27
    :catch_0
    move-exception v5

    move-object v3, v5

    .line 28
    .local v3, "e":Ljava/lang/Exception;
    const-string v5, "TapjoyLoadResourceFunc"

    const-string v6, "An error occurred while reading the ByteArray"

    invoke-static {v5, v6, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
