.class public Lcom/immersion/hapticmediasdk/controllers/ImmersionHttpClient;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/lang/String; = "ImmersionHttpClient"

.field public static b044604460446ц04460446:I = 0x0

.field public static b0446ц0446ц04460446:I = 0x1

.field public static bц04460446ц04460446:I = 0x2

.field public static bццц044604460446:I = 0x3


# instance fields
.field private b:Lorg/apache/http/impl/client/DefaultHttpClient;


# direct methods
.method private constructor <init>()V
    .locals 4

    const/4 v3, 0x4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/immersion/hapticmediasdk/controllers/ImmersionHttpClient;->bцц0446ц04460446()I

    move-result v0

    sget v1, Lcom/immersion/hapticmediasdk/controllers/ImmersionHttpClient;->b0446ц0446ц04460446:I

    add-int/2addr v0, v1

    invoke-static {}, Lcom/immersion/hapticmediasdk/controllers/ImmersionHttpClient;->bцц0446ц04460446()I

    move-result v1

    mul-int/2addr v0, v1

    sget v1, Lcom/immersion/hapticmediasdk/controllers/ImmersionHttpClient;->bц04460446ц04460446:I

    rem-int/2addr v0, v1

    sget v1, Lcom/immersion/hapticmediasdk/controllers/ImmersionHttpClient;->b044604460446ц04460446:I

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    add-int/lit8 v0, v0, 0x2

    invoke-static {}, Lcom/immersion/hapticmediasdk/controllers/ImmersionHttpClient;->bцц0446ц04460446()I

    move-result v0

    sput v0, Lcom/immersion/hapticmediasdk/controllers/ImmersionHttpClient;->b044604460446ц04460446:I

    :cond_0
    const/4 v0, 0x0

    :pswitch_0
    const/4 v1, 0x3

    mul-int/lit8 v2, v1, 0x3

    add-int/lit8 v1, v1, 0x9

    rem-int/lit8 v1, v1, 0x2

    add-int/lit8 v1, v1, 0x1

    packed-switch v1, :pswitch_data_0

    :goto_0
    add-int/lit8 v1, v3, 0x1

    mul-int/lit8 v1, v3, 0x5

    rem-int/lit8 v1, v1, 0x2

    packed-switch v1, :pswitch_data_1

    goto :goto_0

    :pswitch_1
    iput-object v0, p0, Lcom/immersion/hapticmediasdk/controllers/ImmersionHttpClient;->b:Lorg/apache/http/impl/client/DefaultHttpClient;

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private a(Lorg/apache/http/client/methods/HttpUriRequest;Ljava/util/Map;I)Lorg/apache/http/HttpResponse;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v3, 0x3

    const/4 v2, 0x1

    const-string v7, "]"

    const-string v6, "ImmersionHttpClient"

    invoke-interface {p1}, Lorg/apache/http/client/methods/HttpUriRequest;->getURI()Ljava/net/URI;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    :cond_0
    mul-int/lit8 v1, v3, 0x3

    add-int/lit8 v1, v3, 0x9

    rem-int/lit8 v1, v1, 0x2

    add-int/lit8 v1, v1, 0x1

    if-ne v1, v2, :cond_5

    :goto_1
    const-string v1, "Host"

    invoke-interface {p1, v1, v0}, Lorg/apache/http/client/methods/HttpUriRequest;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    sget v0, Lcom/immersion/hapticmediasdk/controllers/ImmersionHttpClient;->bццц044604460446:I

    sget v1, Lcom/immersion/hapticmediasdk/controllers/ImmersionHttpClient;->b0446ц0446ц04460446:I

    add-int/2addr v0, v1

    sget v1, Lcom/immersion/hapticmediasdk/controllers/ImmersionHttpClient;->bццц044604460446:I

    mul-int/2addr v0, v1

    sget v1, Lcom/immersion/hapticmediasdk/controllers/ImmersionHttpClient;->bц04460446ц04460446:I

    rem-int/2addr v0, v1

    sget v1, Lcom/immersion/hapticmediasdk/controllers/ImmersionHttpClient;->b044604460446ц04460446:I

    if-eq v0, v1, :cond_1

    const/16 v0, -0x5c

    add-int/lit8 v0, v0, 0x25

    mul-int/lit8 v0, v0, 0x47

    const/16 v0, 0x2b

    sput v0, Lcom/immersion/hapticmediasdk/controllers/ImmersionHttpClient;->bццц044604460446:I

    const/16 v0, 0x62

    sput v0, Lcom/immersion/hapticmediasdk/controllers/ImmersionHttpClient;->b044604460446ц04460446:I

    :cond_1
    if-eqz p2, :cond_4

    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {p1, v1, v0}, Lorg/apache/http/client/methods/HttpUriRequest;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_2
    const-string v0, ""

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/immersion/hapticmediasdk/controllers/ImmersionHttpClient;->b:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-virtual {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v0

    invoke-static {v0, p3}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    iget-object v0, p0, Lcom/immersion/hapticmediasdk/controllers/ImmersionHttpClient;->b:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-virtual {v0, p1}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    if-nez v0, :cond_6

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Null response returned."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :goto_3
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Lcom/immersion/hapticmediasdk/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    :goto_4
    if-ge v2, v1, :cond_3

    aget-object v3, v0, v2

    const-string v4, "ImmersionHttpClient"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "request header ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    goto :goto_3

    :cond_4
    invoke-interface {p1}, Lorg/apache/http/client/methods/HttpUriRequest;->getAllHeaders()[Lorg/apache/http/Header;

    move-result-object v0

    const-string v1, "ImmersionHttpClient"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "request URI ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Lorg/apache/http/client/methods/HttpUriRequest;->getURI()Ljava/net/URI;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Lcom/immersion/hapticmediasdk/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    array-length v1, v0

    const/4 v2, 0x0

    goto :goto_4

    :cond_5
    mul-int/lit8 v1, v3, 0x3

    add-int/lit8 v1, v3, 0x9

    rem-int/lit8 v1, v1, 0x2

    add-int/lit8 v1, v1, 0x1

    if-ne v1, v2, :cond_0

    goto/16 :goto_1

    :cond_6
    return-object v0
.end method

.method private a()V
    .locals 6

    const/4 v2, 0x4

    iget-object v0, p0, Lcom/immersion/hapticmediasdk/controllers/ImmersionHttpClient;->b:Lorg/apache/http/impl/client/DefaultHttpClient;

    if-nez v0, :cond_0

    sget v0, Lcom/immersion/hapticmediasdk/controllers/ImmersionHttpClient;->bццц044604460446:I

    sget v1, Lcom/immersion/hapticmediasdk/controllers/ImmersionHttpClient;->b0446ц0446ц04460446:I

    add-int/2addr v1, v0

    mul-int/2addr v0, v1

    sget v1, Lcom/immersion/hapticmediasdk/controllers/ImmersionHttpClient;->bц04460446ц04460446:I

    rem-int/2addr v0, v1

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x1

    add-int/lit8 v0, v0, 0x2

    const/16 v0, 0x42

    sput v0, Lcom/immersion/hapticmediasdk/controllers/ImmersionHttpClient;->bццц044604460446:I

    const/16 v0, 0x27

    sput v0, Lcom/immersion/hapticmediasdk/controllers/ImmersionHttpClient;->b044604460446ц04460446:I

    :pswitch_0
    new-instance v0, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v0}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    :pswitch_1
    add-int/lit8 v1, v2, 0x1

    mul-int/lit8 v1, v2, 0x5

    rem-int/lit8 v1, v1, 0x2

    packed-switch v1, :pswitch_data_1

    :goto_0
    add-int/lit8 v1, v2, 0x1

    mul-int/lit8 v1, v2, 0x5

    rem-int/lit8 v1, v1, 0x2

    packed-switch v1, :pswitch_data_2

    goto :goto_0

    :pswitch_2
    const/4 v1, 0x5

    invoke-static {v0, v1}, Lorg/apache/http/conn/params/ConnManagerParams;->setMaxTotalConnections(Lorg/apache/http/params/HttpParams;I)V

    const/16 v1, 0x1388

    invoke-static {v0, v1}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    new-instance v1, Lorg/apache/http/conn/scheme/SchemeRegistry;

    invoke-direct {v1}, Lorg/apache/http/conn/scheme/SchemeRegistry;-><init>()V

    new-instance v2, Lorg/apache/http/conn/scheme/Scheme;

    const-string v3, "http"

    invoke-static {}, Lorg/apache/http/conn/scheme/PlainSocketFactory;->getSocketFactory()Lorg/apache/http/conn/scheme/PlainSocketFactory;

    move-result-object v4

    const/16 v5, 0x50

    invoke-direct {v2, v3, v4, v5}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v1, v2}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    new-instance v2, Lorg/apache/http/conn/scheme/Scheme;

    const-string v3, "https"

    invoke-static {}, Lorg/apache/http/conn/ssl/SSLSocketFactory;->getSocketFactory()Lorg/apache/http/conn/ssl/SSLSocketFactory;

    move-result-object v4

    const/16 v5, 0x1bb

    invoke-direct {v2, v3, v4, v5}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v1, v2}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    new-instance v2, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;

    invoke-direct {v2, v0, v1}, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;-><init>(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/scheme/SchemeRegistry;)V

    new-instance v1, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v1, v2, v0}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V

    iput-object v1, p0, Lcom/immersion/hapticmediasdk/controllers/ImmersionHttpClient;->b:Lorg/apache/http/impl/client/DefaultHttpClient;

    :cond_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public static b0446цц044604460446()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public static bцц0446ц04460446()I
    .locals 1

    const/16 v0, 0x1a

    return v0
.end method

.method public static getHttpClient()Lcom/immersion/hapticmediasdk/controllers/ImmersionHttpClient;
    .locals 4

    const/4 v3, 0x4

    new-instance v0, Lcom/immersion/hapticmediasdk/controllers/ImmersionHttpClient;

    invoke-direct {v0}, Lcom/immersion/hapticmediasdk/controllers/ImmersionHttpClient;-><init>()V

    invoke-direct {v0}, Lcom/immersion/hapticmediasdk/controllers/ImmersionHttpClient;->a()V

    :pswitch_0
    add-int/lit8 v1, v3, 0x1

    mul-int/lit8 v1, v3, 0x5

    rem-int/lit8 v1, v1, 0x2

    packed-switch v1, :pswitch_data_0

    :goto_0
    const/4 v1, 0x3

    mul-int/lit8 v2, v1, 0x3

    add-int/lit8 v1, v1, 0x9

    rem-int/lit8 v1, v1, 0x2

    add-int/lit8 v1, v1, 0x1

    packed-switch v1, :pswitch_data_1

    goto :goto_0

    :pswitch_1
    invoke-static {}, Lcom/immersion/hapticmediasdk/controllers/ImmersionHttpClient;->bцц0446ц04460446()I

    move-result v1

    sget v2, Lcom/immersion/hapticmediasdk/controllers/ImmersionHttpClient;->b0446ц0446ц04460446:I

    add-int/2addr v2, v1

    mul-int/2addr v1, v2

    sget v2, Lcom/immersion/hapticmediasdk/controllers/ImmersionHttpClient;->bц04460446ц04460446:I

    rem-int/2addr v1, v2

    packed-switch v1, :pswitch_data_2

    const/16 v1, -0x4a

    add-int/lit8 v1, v1, 0x9

    mul-int/lit8 v1, v1, -0x1d

    const/16 v1, 0x1f

    sput v1, Lcom/immersion/hapticmediasdk/controllers/ImmersionHttpClient;->b0446ц0446ц04460446:I

    :pswitch_2
    return-object v0

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

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public executeDelete(Ljava/lang/String;Ljava/util/Map;I)Lorg/apache/http/HttpResponse;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v4, 0x3

    const/4 v3, 0x1

    new-instance v0, Lorg/apache/http/client/methods/HttpDelete;

    invoke-direct {v0, p1}, Lorg/apache/http/client/methods/HttpDelete;-><init>(Ljava/lang/String;)V

    sget v1, Lcom/immersion/hapticmediasdk/controllers/ImmersionHttpClient;->bццц044604460446:I

    sget v2, Lcom/immersion/hapticmediasdk/controllers/ImmersionHttpClient;->b0446ц0446ц04460446:I

    add-int/2addr v1, v2

    sget v2, Lcom/immersion/hapticmediasdk/controllers/ImmersionHttpClient;->bццц044604460446:I

    mul-int/2addr v1, v2

    sget v2, Lcom/immersion/hapticmediasdk/controllers/ImmersionHttpClient;->bц04460446ц04460446:I

    rem-int/2addr v1, v2

    sget v2, Lcom/immersion/hapticmediasdk/controllers/ImmersionHttpClient;->b044604460446ц04460446:I

    if-eq v1, v2, :cond_0

    add-int/lit8 v1, v3, 0x2

    const/16 v1, 0x52

    sput v1, Lcom/immersion/hapticmediasdk/controllers/ImmersionHttpClient;->bццц044604460446:I

    invoke-static {}, Lcom/immersion/hapticmediasdk/controllers/ImmersionHttpClient;->bцц0446ц04460446()I

    move-result v1

    sput v1, Lcom/immersion/hapticmediasdk/controllers/ImmersionHttpClient;->b044604460446ц04460446:I

    :cond_0
    invoke-direct {p0, v0, p2, p3}, Lcom/immersion/hapticmediasdk/controllers/ImmersionHttpClient;->a(Lorg/apache/http/client/methods/HttpUriRequest;Ljava/util/Map;I)Lorg/apache/http/HttpResponse;

    move-result-object v0

    :cond_1
    mul-int/lit8 v1, v4, 0x3

    add-int/lit8 v1, v4, 0x9

    rem-int/lit8 v1, v1, 0x2

    add-int/lit8 v1, v1, 0x1

    if-ne v1, v3, :cond_2

    :goto_0
    return-object v0

    :cond_2
    mul-int/lit8 v1, v4, 0x3

    add-int/lit8 v1, v4, 0x9

    rem-int/lit8 v1, v1, 0x2

    add-int/lit8 v1, v1, 0x1

    if-ne v1, v3, :cond_1

    goto :goto_0
.end method

.method public executeGet(Ljava/lang/String;Ljava/util/Map;I)Lorg/apache/http/HttpResponse;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    sget v0, Lcom/immersion/hapticmediasdk/controllers/ImmersionHttpClient;->bццц044604460446:I

    invoke-static {}, Lcom/immersion/hapticmediasdk/controllers/ImmersionHttpClient;->b0446цц044604460446()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/2addr v0, v1

    sget v1, Lcom/immersion/hapticmediasdk/controllers/ImmersionHttpClient;->bц04460446ц04460446:I

    rem-int/2addr v0, v1

    packed-switch v0, :pswitch_data_0

    const/16 v0, 0x21

    add-int/lit8 v0, v0, -0x69

    mul-int/lit8 v0, v0, 0x8

    invoke-static {}, Lcom/immersion/hapticmediasdk/controllers/ImmersionHttpClient;->bцц0446ц04460446()I

    move-result v0

    sput v0, Lcom/immersion/hapticmediasdk/controllers/ImmersionHttpClient;->bццц044604460446:I

    invoke-static {}, Lcom/immersion/hapticmediasdk/controllers/ImmersionHttpClient;->bцц0446ц04460446()I

    move-result v0

    sput v0, Lcom/immersion/hapticmediasdk/controllers/ImmersionHttpClient;->b044604460446ц04460446:I

    :pswitch_0
    :try_start_0
    new-instance v0, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v0, p1}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-direct {p0, v0, p2, p3}, Lcom/immersion/hapticmediasdk/controllers/ImmersionHttpClient;->a(Lorg/apache/http/client/methods/HttpUriRequest;Ljava/util/Map;I)Lorg/apache/http/HttpResponse;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    throw v0

    :catch_1
    move-exception v0

    throw v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public executePost(Ljava/lang/String;Ljava/util/Map;I)Lorg/apache/http/HttpResponse;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v4, 0x4

    const/4 v3, 0x1

    new-instance v0, Lorg/apache/http/client/methods/HttpPost;

    :cond_0
    const/4 v1, 0x3

    mul-int/lit8 v2, v1, 0x3

    add-int/lit8 v1, v1, 0x9

    rem-int/lit8 v1, v1, 0x2

    add-int/lit8 v1, v1, 0x1

    if-ne v1, v3, :cond_1

    :goto_0
    :pswitch_0
    invoke-direct {v0, p1}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0, p2, p3}, Lcom/immersion/hapticmediasdk/controllers/ImmersionHttpClient;->a(Lorg/apache/http/client/methods/HttpUriRequest;Ljava/util/Map;I)Lorg/apache/http/HttpResponse;

    move-result-object v0

    return-object v0

    :cond_1
    add-int/lit8 v1, v4, 0x1

    mul-int/lit8 v1, v4, 0x5

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_0

    sget v1, Lcom/immersion/hapticmediasdk/controllers/ImmersionHttpClient;->bццц044604460446:I

    sget v2, Lcom/immersion/hapticmediasdk/controllers/ImmersionHttpClient;->b0446ц0446ц04460446:I

    add-int/2addr v2, v1

    mul-int/2addr v1, v2

    sget v2, Lcom/immersion/hapticmediasdk/controllers/ImmersionHttpClient;->bц04460446ц04460446:I

    rem-int/2addr v1, v2

    packed-switch v1, :pswitch_data_0

    add-int/lit8 v1, v3, 0x2

    invoke-static {}, Lcom/immersion/hapticmediasdk/controllers/ImmersionHttpClient;->bцц0446ц04460446()I

    move-result v1

    sput v1, Lcom/immersion/hapticmediasdk/controllers/ImmersionHttpClient;->bццц044604460446:I

    invoke-static {}, Lcom/immersion/hapticmediasdk/controllers/ImmersionHttpClient;->bцц0446ц04460446()I

    move-result v1

    sput v1, Lcom/immersion/hapticmediasdk/controllers/ImmersionHttpClient;->b044604460446ц04460446:I

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public executePostWithBody(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;I)Lorg/apache/http/HttpResponse;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    :try_start_0
    new-instance v0, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v0, p1}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    :try_start_1
    new-instance v1, Lorg/apache/http/entity/StringEntity;

    const-string v2, "UTF-8"

    invoke-direct {v1, p2, v2}, Lorg/apache/http/entity/StringEntity;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    sget v2, Lcom/immersion/hapticmediasdk/controllers/ImmersionHttpClient;->bццц044604460446:I

    sget v3, Lcom/immersion/hapticmediasdk/controllers/ImmersionHttpClient;->b0446ц0446ц04460446:I

    add-int/2addr v3, v2

    mul-int/2addr v2, v3

    sget v3, Lcom/immersion/hapticmediasdk/controllers/ImmersionHttpClient;->bц04460446ц04460446:I

    rem-int/2addr v2, v3

    packed-switch v2, :pswitch_data_0

    const/4 v2, 0x1

    add-int/lit8 v2, v2, 0x2

    invoke-static {}, Lcom/immersion/hapticmediasdk/controllers/ImmersionHttpClient;->bцц0446ц04460446()I

    move-result v2

    sput v2, Lcom/immersion/hapticmediasdk/controllers/ImmersionHttpClient;->bццц044604460446:I

    const/16 v2, 0x51

    sput v2, Lcom/immersion/hapticmediasdk/controllers/ImmersionHttpClient;->b044604460446ц04460446:I

    :pswitch_0
    :try_start_2
    invoke-virtual {v0, v1}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    invoke-direct {p0, v0, p3, p4}, Lcom/immersion/hapticmediasdk/controllers/ImmersionHttpClient;->a(Lorg/apache/http/client/methods/HttpUriRequest;Ljava/util/Map;I)Lorg/apache/http/HttpResponse;

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    throw v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    move-exception v0

    throw v0

    :catch_2
    move-exception v0

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public getParams()Lorg/apache/http/params/HttpParams;
    .locals 2

    sget v0, Lcom/immersion/hapticmediasdk/controllers/ImmersionHttpClient;->bццц044604460446:I

    sget v1, Lcom/immersion/hapticmediasdk/controllers/ImmersionHttpClient;->b0446ц0446ц04460446:I

    add-int/2addr v1, v0

    mul-int/2addr v0, v1

    sget v1, Lcom/immersion/hapticmediasdk/controllers/ImmersionHttpClient;->bц04460446ц04460446:I

    rem-int/2addr v0, v1

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x1

    add-int/lit8 v0, v0, 0x2

    const/16 v0, 0x12

    sput v0, Lcom/immersion/hapticmediasdk/controllers/ImmersionHttpClient;->bццц044604460446:I

    invoke-static {}, Lcom/immersion/hapticmediasdk/controllers/ImmersionHttpClient;->bцц0446ц04460446()I

    move-result v0

    sput v0, Lcom/immersion/hapticmediasdk/controllers/ImmersionHttpClient;->b044604460446ц04460446:I

    :pswitch_0
    :try_start_0
    iget-object v0, p0, Lcom/immersion/hapticmediasdk/controllers/ImmersionHttpClient;->b:Lorg/apache/http/impl/client/DefaultHttpClient;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-virtual {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;->getParams()Lorg/apache/http/params/HttpParams;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    throw v0

    :catch_1
    move-exception v0

    throw v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
