.class public Lrrrrrr/rrccrr;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/immersion/hapticmediasdk/MediaPlaybackSDK;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x3
    name = "rrccrr"
.end annotation


# static fields
.field private static final a:Ljava/lang/String; = "ValidateURL"

.field public static b044A044Aъ044A044A044A:I = 0x2

.field public static b044Aъъ044A044A044A:I = 0x18

.field public static bъ044Aъ044A044A044A:I = 0x1


# instance fields
.field private b:Ljava/net/URL;

.field public final synthetic b0425Х0425ХХ0425:Lcom/immersion/hapticmediasdk/MediaPlaybackSDK;


# direct methods
.method public constructor <init>(Lcom/immersion/hapticmediasdk/MediaPlaybackSDK;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;
        }
    .end annotation

    const/4 v3, 0x3

    const/4 v0, 0x0

    const/4 v1, -0x1

    iput-object p1, p0, Lrrrrrr/rrccrr;->b0425Х0425ХХ0425:Lcom/immersion/hapticmediasdk/MediaPlaybackSDK;

    :goto_0
    :try_start_0
    new-array v2, v1, [I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/net/URL;

    :pswitch_0
    mul-int/lit8 v1, v3, 0x3

    add-int/lit8 v1, v3, 0x9

    rem-int/lit8 v1, v1, 0x2

    add-int/lit8 v1, v1, 0x1

    packed-switch v1, :pswitch_data_0

    :goto_1
    mul-int/lit8 v1, v3, 0x3

    add-int/lit8 v1, v3, 0x9

    rem-int/lit8 v1, v1, 0x2

    add-int/lit8 v1, v1, 0x1

    packed-switch v1, :pswitch_data_1

    goto :goto_1

    :pswitch_1
    invoke-direct {v0, p2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lrrrrrr/rrccrr;->b:Ljava/net/URL;

    return-void

    :goto_2
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception v1

    :goto_3
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/String;->length()I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_3

    :catch_2
    move-exception v1

    goto :goto_2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private a(I)V
    .locals 3

    const/4 v2, 0x4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lrrrrrr/rrccrr;->b0425Х0425ХХ0425:Lcom/immersion/hapticmediasdk/MediaPlaybackSDK;

    invoke-static {v0, p1}, Lcom/immersion/hapticmediasdk/MediaPlaybackSDK;->bллл043B043Bл(Lcom/immersion/hapticmediasdk/MediaPlaybackSDK;I)I

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :pswitch_0
    add-int/lit8 v0, v2, 0x1

    mul-int/lit8 v0, v2, 0x5

    rem-int/lit8 v0, v0, 0x2

    packed-switch v0, :pswitch_data_0

    :goto_0
    const/4 v0, 0x3

    mul-int/lit8 v1, v0, 0x3

    add-int/lit8 v0, v0, 0x9

    rem-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x1

    packed-switch v0, :pswitch_data_1

    goto :goto_0

    :pswitch_1
    :try_start_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static bъъ044A044A044A044A()I
    .locals 1

    const/4 v0, 0x6

    return v0
.end method


# virtual methods
.method public run()V
    .locals 6

    const/4 v5, 0x0

    const/16 v1, 0x1f4

    :try_start_0
    iget-object v0, p0, Lrrrrrr/rrccrr;->b:Ljava/net/URL;

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    const/16 v2, 0x2710

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    const/16 v2, 0x2710

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    const-string v2, "HEAD"
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget v3, Lrrrrrr/rrccrr;->b044Aъъ044A044A044A:I

    sget v4, Lrrrrrr/rrccrr;->bъ044Aъ044A044A044A:I

    add-int/2addr v4, v3

    mul-int/2addr v3, v4

    sget v4, Lrrrrrr/rrccrr;->b044A044Aъ044A044A044A:I

    rem-int/2addr v3, v4

    packed-switch v3, :pswitch_data_0

    const/4 v3, 0x1

    add-int/lit8 v3, v3, 0x2

    sput v5, Lrrrrrr/rrccrr;->b044Aъъ044A044A044A:I

    invoke-static {}, Lrrrrrr/rrccrr;->bъъ044A044A044A044A()I

    move-result v3

    sput v3, Lrrrrrr/rrccrr;->bъ044Aъ044A044A044A:I

    :pswitch_0
    :try_start_1
    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    :try_start_2
    invoke-direct {p0, v0}, Lrrrrrr/rrccrr;->a(I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :goto_0
    return-void

    :catch_0
    move-exception v0

    :try_start_3
    const-string v2, "ValidateURL"

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/immersion/hapticmediasdk/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-direct {p0, v1}, Lrrrrrr/rrccrr;->a(I)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    throw v0

    :catchall_0
    move-exception v0

    :try_start_5
    invoke-direct {p0, v1}, Lrrrrrr/rrccrr;->a(I)V

    throw v0
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    :catch_2
    move-exception v0

    throw v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
