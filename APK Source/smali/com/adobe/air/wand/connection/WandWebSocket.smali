.class public Lcom/adobe/air/wand/connection/WandWebSocket;
.super Ljava/lang/Object;
.source "WandWebSocket.java"

# interfaces
.implements Lcom/adobe/air/wand/connection/Connection;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/adobe/air/wand/connection/WandWebSocket$1;,
        Lcom/adobe/air/wand/connection/WandWebSocket$ConnectPingTask;,
        Lcom/adobe/air/wand/connection/WandWebSocket$WandSocketServer;,
        Lcom/adobe/air/wand/connection/WandWebSocket$Handshake;
    }
.end annotation


# static fields
.field private static final CONNECT_PING_FLAG_FILE:Ljava/lang/String; = "connectPingFlag"

.field private static final CONNECT_PING_URL:Ljava/lang/String; = "http://dh8vjmvwgc27o.cloudfront.net/AIRGamepad/connect_ping.txt"

.field private static final LOG_TAG:Ljava/lang/String; = "WandWebSocket"

.field private static final WEBSOCKET_PROTOCOL:Ljava/lang/String; = "WEBSOCKET"


# instance fields
.field private final HANDSHAKE_SYNCHRONIZER:Ljava/lang/String;

.field private final OPEN_SYNCHRONIZER:Ljava/lang/String;

.field private mActivity:Landroid/app/Activity;

.field private mAllowIncomingConnection:Z

.field private mConnection:Lorg/java_websocket/WebSocket;

.field private mConnectionListener:Lcom/adobe/air/wand/connection/Connection$Listener;

.field private mConnectionToken:Ljava/lang/String;

.field private mHandshake:Lcom/adobe/air/wand/connection/WandWebSocket$Handshake;

.field private mHandshakeTimer:Ljava/util/Timer;

.field private mIsDisposed:Z

.field private mLocalID:Ljava/lang/String;

.field private mWandSocketServer:Lcom/adobe/air/wand/connection/WandWebSocket$WandSocketServer;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 431
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 201
    const-string v0, "OPEN_SYNCHRONIZER"

    iput-object v0, p0, Lcom/adobe/air/wand/connection/WandWebSocket;->OPEN_SYNCHRONIZER:Ljava/lang/String;

    .line 202
    const-string v0, "HANDSHAKE_SYNCHRONIZER"

    iput-object v0, p0, Lcom/adobe/air/wand/connection/WandWebSocket;->HANDSHAKE_SYNCHRONIZER:Ljava/lang/String;

    .line 204
    iput-object v1, p0, Lcom/adobe/air/wand/connection/WandWebSocket;->mConnectionListener:Lcom/adobe/air/wand/connection/Connection$Listener;

    .line 205
    iput-object v1, p0, Lcom/adobe/air/wand/connection/WandWebSocket;->mConnection:Lorg/java_websocket/WebSocket;

    .line 206
    iput-boolean v2, p0, Lcom/adobe/air/wand/connection/WandWebSocket;->mAllowIncomingConnection:Z

    .line 207
    iput-object v1, p0, Lcom/adobe/air/wand/connection/WandWebSocket;->mConnectionToken:Ljava/lang/String;

    .line 208
    iput-object v1, p0, Lcom/adobe/air/wand/connection/WandWebSocket;->mLocalID:Ljava/lang/String;

    .line 210
    iput-object v1, p0, Lcom/adobe/air/wand/connection/WandWebSocket;->mHandshake:Lcom/adobe/air/wand/connection/WandWebSocket$Handshake;

    .line 211
    iput-object v1, p0, Lcom/adobe/air/wand/connection/WandWebSocket;->mHandshakeTimer:Ljava/util/Timer;

    .line 213
    iput-object v1, p0, Lcom/adobe/air/wand/connection/WandWebSocket;->mWandSocketServer:Lcom/adobe/air/wand/connection/WandWebSocket$WandSocketServer;

    .line 214
    iput-object v1, p0, Lcom/adobe/air/wand/connection/WandWebSocket;->mActivity:Landroid/app/Activity;

    .line 216
    iput-boolean v2, p0, Lcom/adobe/air/wand/connection/WandWebSocket;->mIsDisposed:Z

    .line 433
    iput-object p1, p0, Lcom/adobe/air/wand/connection/WandWebSocket;->mActivity:Landroid/app/Activity;

    .line 435
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/adobe/air/wand/connection/WandWebSocket;->mHandshakeTimer:Ljava/util/Timer;

    .line 436
    return-void
.end method

.method static synthetic access$000(Lcom/adobe/air/wand/connection/WandWebSocket;)Lcom/adobe/air/wand/connection/WandWebSocket$WandSocketServer;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/adobe/air/wand/connection/WandWebSocket;->mWandSocketServer:Lcom/adobe/air/wand/connection/WandWebSocket$WandSocketServer;

    return-object v0
.end method

.method static synthetic access$002(Lcom/adobe/air/wand/connection/WandWebSocket;Lcom/adobe/air/wand/connection/WandWebSocket$WandSocketServer;)Lcom/adobe/air/wand/connection/WandWebSocket$WandSocketServer;
    .locals 0

    .prologue
    .line 60
    iput-object p1, p0, Lcom/adobe/air/wand/connection/WandWebSocket;->mWandSocketServer:Lcom/adobe/air/wand/connection/WandWebSocket$WandSocketServer;

    return-object p1
.end method

.method static synthetic access$100(Lcom/adobe/air/wand/connection/WandWebSocket;)Lorg/java_websocket/WebSocket;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/adobe/air/wand/connection/WandWebSocket;->mConnection:Lorg/java_websocket/WebSocket;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/adobe/air/wand/connection/WandWebSocket;)Landroid/app/Activity;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/adobe/air/wand/connection/WandWebSocket;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$102(Lcom/adobe/air/wand/connection/WandWebSocket;Lorg/java_websocket/WebSocket;)Lorg/java_websocket/WebSocket;
    .locals 0

    .prologue
    .line 60
    iput-object p1, p0, Lcom/adobe/air/wand/connection/WandWebSocket;->mConnection:Lorg/java_websocket/WebSocket;

    return-object p1
.end method

.method static synthetic access$200(Lcom/adobe/air/wand/connection/WandWebSocket;)V
    .locals 0

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/adobe/air/wand/connection/WandWebSocket;->forceCloseConnection()V

    return-void
.end method

.method static synthetic access$300(Lcom/adobe/air/wand/connection/WandWebSocket;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/adobe/air/wand/connection/WandWebSocket;->startSocketServer()V

    return-void
.end method

.method static synthetic access$400(Lcom/adobe/air/wand/connection/WandWebSocket;)Z
    .locals 1

    .prologue
    .line 60
    iget-boolean v0, p0, Lcom/adobe/air/wand/connection/WandWebSocket;->mAllowIncomingConnection:Z

    return v0
.end method

.method static synthetic access$500(Lcom/adobe/air/wand/connection/WandWebSocket;)Lcom/adobe/air/wand/connection/WandWebSocket$Handshake;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/adobe/air/wand/connection/WandWebSocket;->mHandshake:Lcom/adobe/air/wand/connection/WandWebSocket$Handshake;

    return-object v0
.end method

.method static synthetic access$502(Lcom/adobe/air/wand/connection/WandWebSocket;Lcom/adobe/air/wand/connection/WandWebSocket$Handshake;)Lcom/adobe/air/wand/connection/WandWebSocket$Handshake;
    .locals 0

    .prologue
    .line 60
    iput-object p1, p0, Lcom/adobe/air/wand/connection/WandWebSocket;->mHandshake:Lcom/adobe/air/wand/connection/WandWebSocket$Handshake;

    return-object p1
.end method

.method static synthetic access$600(Lcom/adobe/air/wand/connection/WandWebSocket;)Ljava/util/Timer;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/adobe/air/wand/connection/WandWebSocket;->mHandshakeTimer:Ljava/util/Timer;

    return-object v0
.end method

.method static synthetic access$700(Lcom/adobe/air/wand/connection/WandWebSocket;)Lcom/adobe/air/wand/connection/Connection$Listener;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/adobe/air/wand/connection/WandWebSocket;->mConnectionListener:Lcom/adobe/air/wand/connection/Connection$Listener;

    return-object v0
.end method

.method static synthetic access$800(Lcom/adobe/air/wand/connection/WandWebSocket;Lcom/adobe/air/wand/connection/WandWebSocket$Handshake;)Z
    .locals 1

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lcom/adobe/air/wand/connection/WandWebSocket;->validateHandshake(Lcom/adobe/air/wand/connection/WandWebSocket$Handshake;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$900(Lcom/adobe/air/wand/connection/WandWebSocket;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/adobe/air/wand/connection/WandWebSocket;->mLocalID:Ljava/lang/String;

    return-object v0
.end method

.method private constructLocalID()Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 466
    invoke-direct {p0}, Lcom/adobe/air/wand/connection/WandWebSocket;->getLocalIpAddress()Ljava/net/InetAddress;

    move-result-object v0

    .line 468
    if-nez v0, :cond_0

    .line 469
    const/4 v0, 0x0

    .line 476
    :goto_0
    return-object v0

    .line 471
    :cond_0
    invoke-virtual {v0}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v0

    .line 472
    const/4 v1, 0x3

    aget-byte v1, v0, v1

    invoke-direct {p0, v1}, Lcom/adobe/air/wand/connection/WandWebSocket;->getUnsignedByte(B)I

    move-result v1

    int-to-long v1, v1

    const-wide/16 v3, 0x1

    mul-long/2addr v1, v3

    const/4 v3, 0x2

    aget-byte v3, v0, v3

    invoke-direct {p0, v3}, Lcom/adobe/air/wand/connection/WandWebSocket;->getUnsignedByte(B)I

    move-result v3

    int-to-long v3, v3

    const-wide/16 v5, 0x100

    mul-long/2addr v3, v5

    add-long/2addr v1, v3

    const/4 v3, 0x1

    aget-byte v3, v0, v3

    invoke-direct {p0, v3}, Lcom/adobe/air/wand/connection/WandWebSocket;->getUnsignedByte(B)I

    move-result v3

    int-to-long v3, v3

    const-wide/32 v5, 0x10000

    mul-long/2addr v3, v5

    add-long/2addr v1, v3

    const/4 v3, 0x0

    aget-byte v0, v0, v3

    invoke-direct {p0, v0}, Lcom/adobe/air/wand/connection/WandWebSocket;->getUnsignedByte(B)I

    move-result v0

    int-to-long v3, v0

    const-wide/32 v5, 0x1000000

    mul-long/2addr v3, v5

    add-long v0, v1, v3

    .line 476
    const/16 v2, 0x20

    invoke-static {v0, v1, v2}, Ljava/lang/Long;->toString(JI)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private forceCloseConnection()V
    .locals 6

    .prologue
    const/16 v4, 0x3e9

    const-string v5, "AIR Gamepad has closed"

    .line 507
    iget-object v0, p0, Lcom/adobe/air/wand/connection/WandWebSocket;->mConnection:Lorg/java_websocket/WebSocket;

    .line 508
    iget-object v1, p0, Lcom/adobe/air/wand/connection/WandWebSocket;->mWandSocketServer:Lcom/adobe/air/wand/connection/WandWebSocket$WandSocketServer;

    iget-object v2, p0, Lcom/adobe/air/wand/connection/WandWebSocket;->mConnection:Lorg/java_websocket/WebSocket;

    const-string v3, "AIR Gamepad has closed"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v4, v5, v3}, Lcom/adobe/air/wand/connection/WandWebSocket$WandSocketServer;->onClose(Lorg/java_websocket/WebSocket;ILjava/lang/String;Z)V

    .line 509
    const-string v1, "AIR Gamepad has closed"

    invoke-interface {v0, v4, v5}, Lorg/java_websocket/WebSocket;->close(ILjava/lang/String;)V

    .line 510
    return-void
.end method

.method private getLocalIpAddress()Ljava/net/InetAddress;
    .locals 1

    .prologue
    .line 732
    :try_start_0
    invoke-direct {p0}, Lcom/adobe/air/wand/connection/WandWebSocket;->getWiFiIpAddress()Ljava/net/InetAddress;

    move-result-object v0

    .line 735
    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/adobe/air/wand/connection/WandWebSocket;->getWiFiHotspotIpAddress()Ljava/net/InetAddress;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 744
    :cond_0
    :goto_0
    return-object v0

    .line 739
    :catch_0
    move-exception v0

    .line 744
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getPreferredPort()I
    .locals 1

    .prologue
    .line 751
    const/16 v0, 0x4d2

    return v0
.end method

.method private getUnsignedByte(B)I
    .locals 1

    .prologue
    .line 755
    if-ltz p1, :cond_0

    move v0, p1

    :goto_0
    return v0

    :cond_0
    add-int/lit16 v0, p1, 0x100

    goto :goto_0
.end method

.method private getWiFiHotspotIpAddress()Ljava/net/InetAddress;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;,
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    const/16 v7, 0x10

    const/4 v11, 0x6

    const/4 v10, 0x1

    const/4 v9, 0x0

    const/4 v8, 0x0

    .line 612
    iget-object v0, p0, Lcom/adobe/air/wand/connection/WandWebSocket;->mActivity:Landroid/app/Activity;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 613
    if-nez v0, :cond_0

    move-object v0, v9

    .line 719
    :goto_0
    return-object v0

    .line 615
    :cond_0
    iget-object v0, p0, Lcom/adobe/air/wand/connection/WandWebSocket;->mActivity:Landroid/app/Activity;

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/wifi/WifiManager;

    .line 616
    if-nez p0, :cond_1

    move-object v0, v9

    goto :goto_0

    .line 618
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v1

    .line 623
    array-length v2, v1

    move v3, v8

    move v4, v8

    :goto_1
    if-ge v3, v2, :cond_2

    aget-object v0, v1, v3

    .line 624
    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "isWifiApEnabled"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 627
    const/4 v5, 0x0

    :try_start_0
    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2

    move-result v0

    if-eqz v0, :cond_c

    move v0, v10

    .line 623
    :goto_2
    add-int/lit8 v3, v3, 0x1

    move v4, v0

    goto :goto_1

    .line 635
    :catch_0
    move-exception v0

    move v0, v4

    .line 646
    goto :goto_2

    .line 639
    :catch_1
    move-exception v0

    move v0, v4

    .line 646
    goto :goto_2

    .line 643
    :catch_2
    move-exception v0

    move v0, v4

    goto :goto_2

    .line 650
    :cond_2
    if-nez v4, :cond_3

    move-object v0, v9

    goto :goto_0

    .line 653
    :cond_3
    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    .line 654
    if-nez v0, :cond_4

    move-object v0, v9

    goto :goto_0

    .line 655
    :cond_4
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 659
    new-array v1, v11, [B

    .line 662
    const-string v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_5

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0xc

    if-ne v2, v3, :cond_5

    move v2, v8

    .line 664
    :goto_3
    array-length v3, v1

    if-ge v2, v3, :cond_6

    .line 666
    mul-int/lit8 v3, v2, 0x2

    mul-int/lit8 v4, v2, 0x2

    add-int/lit8 v4, v4, 0x2

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v3

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 664
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 671
    :cond_5
    const-string v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    move v2, v8

    .line 673
    :goto_4
    array-length v3, v1

    if-ge v2, v3, :cond_6

    array-length v3, v0

    if-ge v2, v3, :cond_6

    .line 675
    aget-object v3, v0, v2

    invoke-static {v3, v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v3

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 673
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 682
    :cond_6
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v2

    :cond_7
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 684
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/net/NetworkInterface;

    .line 686
    invoke-virtual {p0}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    move-result-object v3

    :cond_8
    :goto_5
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 687
    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/InetAddress;

    .line 688
    invoke-virtual {v0}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v4

    if-nez v4, :cond_8

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/apache/http/conn/util/InetAddressUtils;->isIPv4Address(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 695
    :try_start_1
    invoke-virtual {p0}, Ljava/net/NetworkInterface;->getHardwareAddress()[B
    :try_end_1
    .catch Ljava/net/SocketException; {:try_start_1 .. :try_end_1} :catch_3

    move-result-object v4

    .line 700
    if-eqz v4, :cond_8

    array-length v5, v4

    if-ne v5, v11, :cond_8

    move v5, v8

    .line 704
    :goto_6
    array-length v6, v4

    if-ge v5, v6, :cond_b

    .line 706
    aget-byte v6, v4, v5

    aget-byte v7, v1, v5

    if-eq v6, v7, :cond_9

    move v4, v8

    .line 713
    :goto_7
    if-eqz v4, :cond_8

    goto/16 :goto_0

    .line 704
    :cond_9
    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    :cond_a
    move-object v0, v9

    .line 719
    goto/16 :goto_0

    .line 696
    :catch_3
    move-exception v0

    goto :goto_5

    :cond_b
    move v4, v10

    goto :goto_7

    :cond_c
    move v0, v4

    goto/16 :goto_2
.end method

.method private getWiFiIpAddress()Ljava/net/InetAddress;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 590
    iget-object v0, p0, Lcom/adobe/air/wand/connection/WandWebSocket;->mActivity:Landroid/app/Activity;

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/wifi/WifiManager;

    .line 591
    if-nez p0, :cond_0

    move-object v0, v2

    .line 607
    :goto_0
    return-object v0

    .line 593
    :cond_0
    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    .line 594
    if-nez v0, :cond_1

    move-object v0, v2

    goto :goto_0

    .line 596
    :cond_1
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getIpAddress()I

    move-result v0

    .line 598
    if-nez v0, :cond_2

    move-object v0, v2

    goto :goto_0

    .line 600
    :cond_2
    const-string v1, "%d.%d.%d.%d"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    and-int/lit16 v4, v0, 0xff

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    shr-int/lit8 v4, v0, 0x8

    and-int/lit16 v4, v4, 0xff

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    shr-int/lit8 v4, v0, 0x10

    and-int/lit16 v4, v4, 0xff

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    shr-int/lit8 v0, v0, 0x18

    and-int/lit16 v0, v0, 0xff

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 607
    invoke-static {v0}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    goto :goto_0
.end method

.method private pingServerOnConnect()V
    .locals 4

    .prologue
    .line 842
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/adobe/air/wand/connection/WandWebSocket;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getFilesDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "connectPingFlag"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 845
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 849
    :goto_0
    return-void

    .line 847
    :cond_0
    new-instance v0, Lcom/adobe/air/wand/connection/WandWebSocket$ConnectPingTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/adobe/air/wand/connection/WandWebSocket$ConnectPingTask;-><init>(Lcom/adobe/air/wand/connection/WandWebSocket;Lcom/adobe/air/wand/connection/WandWebSocket$1;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "http://dh8vjmvwgc27o.cloudfront.net/AIRGamepad/connect_ping.txt"

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/adobe/air/wand/connection/WandWebSocket$ConnectPingTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method private startSocketServer()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 440
    iget-object v0, p0, Lcom/adobe/air/wand/connection/WandWebSocket;->mWandSocketServer:Lcom/adobe/air/wand/connection/WandWebSocket$WandSocketServer;

    if-nez v0, :cond_0

    .line 442
    new-instance v0, Ljava/net/InetSocketAddress;

    invoke-direct {p0}, Lcom/adobe/air/wand/connection/WandWebSocket;->getLocalIpAddress()Ljava/net/InetAddress;

    move-result-object v1

    invoke-direct {p0}, Lcom/adobe/air/wand/connection/WandWebSocket;->getPreferredPort()I

    move-result v2

    invoke-direct {v0, v1, v2}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    .line 443
    new-instance v1, Lcom/adobe/air/wand/connection/WandWebSocket$WandSocketServer;

    invoke-direct {v1, p0, v0}, Lcom/adobe/air/wand/connection/WandWebSocket$WandSocketServer;-><init>(Lcom/adobe/air/wand/connection/WandWebSocket;Ljava/net/InetSocketAddress;)V

    iput-object v1, p0, Lcom/adobe/air/wand/connection/WandWebSocket;->mWandSocketServer:Lcom/adobe/air/wand/connection/WandWebSocket$WandSocketServer;

    .line 444
    iget-object v0, p0, Lcom/adobe/air/wand/connection/WandWebSocket;->mWandSocketServer:Lcom/adobe/air/wand/connection/WandWebSocket$WandSocketServer;

    invoke-virtual {v0}, Lcom/adobe/air/wand/connection/WandWebSocket$WandSocketServer;->start()V

    .line 446
    :cond_0
    return-void
.end method

.method private stopSocketServer()V
    .locals 2

    .prologue
    .line 450
    iget-object v0, p0, Lcom/adobe/air/wand/connection/WandWebSocket;->mWandSocketServer:Lcom/adobe/air/wand/connection/WandWebSocket$WandSocketServer;

    .line 451
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/adobe/air/wand/connection/WandWebSocket;->mWandSocketServer:Lcom/adobe/air/wand/connection/WandWebSocket$WandSocketServer;

    .line 453
    if-eqz v0, :cond_0

    .line 455
    :try_start_0
    invoke-virtual {v0}, Lorg/java_websocket/server/WebSocketServer;->stop()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 462
    :cond_0
    :goto_0
    return-void

    .line 457
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private validateHandshake(Lcom/adobe/air/wand/connection/WandWebSocket$Handshake;)Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 760
    if-nez p1, :cond_0

    move v0, v2

    .line 769
    :goto_0
    return v0

    .line 763
    :cond_0
    const-string v0, "WEBSOCKET"

    invoke-virtual {p1}, Lcom/adobe/air/wand/connection/WandWebSocket$Handshake;->getProtocol()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v2

    goto :goto_0

    .line 765
    :cond_1
    iget-object v0, p0, Lcom/adobe/air/wand/connection/WandWebSocket;->mLocalID:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/adobe/air/wand/connection/WandWebSocket$Handshake;->getDestinationID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v2

    goto :goto_0

    .line 767
    :cond_2
    const-string v0, "\\d+\\.\\d+\\.\\d+"

    invoke-virtual {p1}, Lcom/adobe/air/wand/connection/WandWebSocket$Handshake;->getVersion()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    move v0, v2

    goto :goto_0

    .line 769
    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public connect()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 482
    iget-boolean v0, p0, Lcom/adobe/air/wand/connection/WandWebSocket;->mIsDisposed:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Connection has been disposed"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 484
    :cond_0
    iget-boolean v0, p0, Lcom/adobe/air/wand/connection/WandWebSocket;->mAllowIncomingConnection:Z

    if-eqz v0, :cond_1

    .line 486
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Connection is already established"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 490
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/adobe/air/wand/connection/WandWebSocket;->mAllowIncomingConnection:Z

    .line 492
    iget-object v0, p0, Lcom/adobe/air/wand/connection/WandWebSocket;->mWandSocketServer:Lcom/adobe/air/wand/connection/WandWebSocket$WandSocketServer;

    if-nez v0, :cond_2

    .line 493
    invoke-direct {p0}, Lcom/adobe/air/wand/connection/WandWebSocket;->startSocketServer()V

    .line 496
    :cond_2
    invoke-direct {p0}, Lcom/adobe/air/wand/connection/WandWebSocket;->constructLocalID()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/air/wand/connection/WandWebSocket;->mLocalID:Ljava/lang/String;

    .line 498
    iget-object v0, p0, Lcom/adobe/air/wand/connection/WandWebSocket;->mLocalID:Ljava/lang/String;

    iput-object v0, p0, Lcom/adobe/air/wand/connection/WandWebSocket;->mConnectionToken:Ljava/lang/String;

    .line 500
    iget-object v0, p0, Lcom/adobe/air/wand/connection/WandWebSocket;->mConnectionListener:Lcom/adobe/air/wand/connection/Connection$Listener;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/adobe/air/wand/connection/WandWebSocket;->mConnectionListener:Lcom/adobe/air/wand/connection/Connection$Listener;

    invoke-virtual {p0}, Lcom/adobe/air/wand/connection/WandWebSocket;->getConnectionToken()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/adobe/air/wand/connection/Connection$Listener;->updateConnectionToken(Ljava/lang/String;)V

    .line 501
    :cond_3
    iget-object v0, p0, Lcom/adobe/air/wand/connection/WandWebSocket;->mConnectionListener:Lcom/adobe/air/wand/connection/Connection$Listener;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/adobe/air/wand/connection/WandWebSocket;->mConnectionListener:Lcom/adobe/air/wand/connection/Connection$Listener;

    invoke-interface {v0}, Lcom/adobe/air/wand/connection/Connection$Listener;->onConnectSuccess()V

    .line 503
    :cond_4
    return-void
.end method

.method public disconnect()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 515
    iget-boolean v0, p0, Lcom/adobe/air/wand/connection/WandWebSocket;->mIsDisposed:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Connection has been disposed"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 517
    :cond_0
    iget-boolean v0, p0, Lcom/adobe/air/wand/connection/WandWebSocket;->mAllowIncomingConnection:Z

    if-nez v0, :cond_1

    .line 519
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Connection is not established"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 523
    :cond_1
    iget-object v0, p0, Lcom/adobe/air/wand/connection/WandWebSocket;->mConnection:Lorg/java_websocket/WebSocket;

    if-eqz v0, :cond_2

    .line 527
    invoke-direct {p0}, Lcom/adobe/air/wand/connection/WandWebSocket;->forceCloseConnection()V

    .line 530
    :cond_2
    invoke-direct {p0}, Lcom/adobe/air/wand/connection/WandWebSocket;->stopSocketServer()V

    .line 531
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/adobe/air/wand/connection/WandWebSocket;->mAllowIncomingConnection:Z

    .line 532
    iget-object v0, p0, Lcom/adobe/air/wand/connection/WandWebSocket;->mConnectionListener:Lcom/adobe/air/wand/connection/Connection$Listener;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/adobe/air/wand/connection/WandWebSocket;->mConnectionListener:Lcom/adobe/air/wand/connection/Connection$Listener;

    invoke-interface {v0}, Lcom/adobe/air/wand/connection/Connection$Listener;->onDisconnectSuccess()V

    .line 534
    :cond_3
    return-void
.end method

.method public dispose()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 870
    iget-boolean v0, p0, Lcom/adobe/air/wand/connection/WandWebSocket;->mIsDisposed:Z

    if-eqz v0, :cond_0

    .line 894
    :goto_0
    return-void

    .line 872
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/adobe/air/wand/connection/WandWebSocket;->mIsDisposed:Z

    .line 874
    iget-boolean v0, p0, Lcom/adobe/air/wand/connection/WandWebSocket;->mAllowIncomingConnection:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/adobe/air/wand/connection/WandWebSocket;->disconnect()V

    .line 876
    :cond_1
    invoke-virtual {p0}, Lcom/adobe/air/wand/connection/WandWebSocket;->unregisterListener()V

    .line 878
    iget-object v0, p0, Lcom/adobe/air/wand/connection/WandWebSocket;->mConnection:Lorg/java_websocket/WebSocket;

    if-eqz v0, :cond_2

    .line 880
    iget-object v0, p0, Lcom/adobe/air/wand/connection/WandWebSocket;->mConnection:Lorg/java_websocket/WebSocket;

    const/16 v1, 0x3e9

    const-string v2, "AIR Gamepad has closed"

    invoke-interface {v0, v1, v2}, Lorg/java_websocket/WebSocket;->close(ILjava/lang/String;)V

    .line 882
    :cond_2
    iput-object v3, p0, Lcom/adobe/air/wand/connection/WandWebSocket;->mConnection:Lorg/java_websocket/WebSocket;

    .line 883
    iput-object v3, p0, Lcom/adobe/air/wand/connection/WandWebSocket;->mHandshake:Lcom/adobe/air/wand/connection/WandWebSocket$Handshake;

    .line 885
    iget-object v0, p0, Lcom/adobe/air/wand/connection/WandWebSocket;->mHandshakeTimer:Ljava/util/Timer;

    if-eqz v0, :cond_3

    .line 887
    iget-object v0, p0, Lcom/adobe/air/wand/connection/WandWebSocket;->mHandshakeTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 888
    iget-object v0, p0, Lcom/adobe/air/wand/connection/WandWebSocket;->mHandshakeTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->purge()I

    .line 890
    :cond_3
    iput-object v3, p0, Lcom/adobe/air/wand/connection/WandWebSocket;->mHandshakeTimer:Ljava/util/Timer;

    .line 892
    iput-object v3, p0, Lcom/adobe/air/wand/connection/WandWebSocket;->mWandSocketServer:Lcom/adobe/air/wand/connection/WandWebSocket$WandSocketServer;

    .line 893
    iput-object v3, p0, Lcom/adobe/air/wand/connection/WandWebSocket;->mActivity:Landroid/app/Activity;

    goto :goto_0
.end method

.method public getConnectionToken()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 539
    iget-boolean v0, p0, Lcom/adobe/air/wand/connection/WandWebSocket;->mIsDisposed:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Connection has been disposed"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 541
    :cond_0
    iget-boolean v0, p0, Lcom/adobe/air/wand/connection/WandWebSocket;->mAllowIncomingConnection:Z

    if-nez v0, :cond_1

    .line 543
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Connection is not established"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 546
    :cond_1
    iget-object v0, p0, Lcom/adobe/air/wand/connection/WandWebSocket;->mConnectionToken:Ljava/lang/String;

    if-nez v0, :cond_2

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_2
    iget-object v0, p0, Lcom/adobe/air/wand/connection/WandWebSocket;->mConnectionToken:Ljava/lang/String;

    goto :goto_0
.end method

.method public onConnectionChanged()V
    .locals 2

    .prologue
    .line 775
    iget-boolean v0, p0, Lcom/adobe/air/wand/connection/WandWebSocket;->mIsDisposed:Z

    if-eqz v0, :cond_1

    .line 801
    :cond_0
    :goto_0
    return-void

    .line 779
    :cond_1
    iget-boolean v0, p0, Lcom/adobe/air/wand/connection/WandWebSocket;->mAllowIncomingConnection:Z

    if-eqz v0, :cond_0

    .line 782
    :try_start_0
    invoke-direct {p0}, Lcom/adobe/air/wand/connection/WandWebSocket;->constructLocalID()Ljava/lang/String;

    move-result-object v0

    .line 784
    iget-object v1, p0, Lcom/adobe/air/wand/connection/WandWebSocket;->mLocalID:Ljava/lang/String;

    if-nez v1, :cond_2

    if-eqz v0, :cond_0

    .line 789
    :cond_2
    iget-object v1, p0, Lcom/adobe/air/wand/connection/WandWebSocket;->mLocalID:Ljava/lang/String;

    if-eqz v1, :cond_3

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/adobe/air/wand/connection/WandWebSocket;->mLocalID:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 794
    :cond_3
    invoke-virtual {p0}, Lcom/adobe/air/wand/connection/WandWebSocket;->disconnect()V

    .line 795
    invoke-virtual {p0}, Lcom/adobe/air/wand/connection/WandWebSocket;->connect()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 797
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onReadyForConnection()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 854
    iget-object v0, p0, Lcom/adobe/air/wand/connection/WandWebSocket;->mHandshake:Lcom/adobe/air/wand/connection/WandWebSocket$Handshake;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adobe/air/wand/connection/WandWebSocket;->mLocalID:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 856
    :cond_0
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Invalid state at onReadyForConnection callback."

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 859
    :cond_1
    iget-object v0, p0, Lcom/adobe/air/wand/connection/WandWebSocket;->mConnection:Lorg/java_websocket/WebSocket;

    iget-object v1, p0, Lcom/adobe/air/wand/connection/WandWebSocket;->mHandshake:Lcom/adobe/air/wand/connection/WandWebSocket$Handshake;

    iget-object v2, p0, Lcom/adobe/air/wand/connection/WandWebSocket;->mLocalID:Ljava/lang/String;

    const-string v3, "1.0.0"

    invoke-virtual {v1, v2, v3}, Lcom/adobe/air/wand/connection/WandWebSocket$Handshake;->getSuccessResponse(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/java_websocket/WebSocket;->send(Ljava/lang/String;)V

    .line 861
    invoke-direct {p0}, Lcom/adobe/air/wand/connection/WandWebSocket;->pingServerOnConnect()V

    .line 862
    return-void
.end method

.method public registerListener(Lcom/adobe/air/wand/connection/Connection$Listener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 552
    iget-boolean v0, p0, Lcom/adobe/air/wand/connection/WandWebSocket;->mIsDisposed:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Connection has been disposed"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 554
    :cond_0
    if-nez p1, :cond_1

    .line 555
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Invalid Connection.Listener"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 558
    :cond_1
    iget-object v0, p0, Lcom/adobe/air/wand/connection/WandWebSocket;->mConnectionListener:Lcom/adobe/air/wand/connection/Connection$Listener;

    if-eqz v0, :cond_2

    .line 559
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "A listener is already registered"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 562
    :cond_2
    iput-object p1, p0, Lcom/adobe/air/wand/connection/WandWebSocket;->mConnectionListener:Lcom/adobe/air/wand/connection/Connection$Listener;

    .line 563
    return-void
.end method

.method public send(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 574
    iget-boolean v0, p0, Lcom/adobe/air/wand/connection/WandWebSocket;->mIsDisposed:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Connection has been disposed"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 576
    :cond_0
    iget-object v0, p0, Lcom/adobe/air/wand/connection/WandWebSocket;->mConnection:Lorg/java_websocket/WebSocket;

    if-eqz v0, :cond_1

    .line 579
    :try_start_0
    iget-object v0, p0, Lcom/adobe/air/wand/connection/WandWebSocket;->mConnection:Lorg/java_websocket/WebSocket;

    invoke-interface {v0, p1}, Lorg/java_websocket/WebSocket;->send(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 586
    :cond_1
    return-void

    .line 581
    :catch_0
    move-exception v0

    .line 583
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Unable to send Message"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public unregisterListener()V
    .locals 1

    .prologue
    .line 568
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adobe/air/wand/connection/WandWebSocket;->mConnectionListener:Lcom/adobe/air/wand/connection/Connection$Listener;

    .line 569
    return-void
.end method
