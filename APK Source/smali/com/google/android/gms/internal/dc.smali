.class public final Lcom/google/android/gms/internal/dc;
.super Lcom/google/android/gms/internal/db$a;


# static fields
.field private static final px:Ljava/lang/Object;

.field private static py:Lcom/google/android/gms/internal/dc;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final pA:Lcom/google/android/gms/internal/ax;

.field private final pz:Lcom/google/android/gms/internal/bf;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/dc;->px:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ax;Lcom/google/android/gms/internal/bf;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/db$a;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/dc;->mContext:Landroid/content/Context;

    iput-object p3, p0, Lcom/google/android/gms/internal/dc;->pz:Lcom/google/android/gms/internal/bf;

    iput-object p2, p0, Lcom/google/android/gms/internal/dc;->pA:Lcom/google/android/gms/internal/ax;

    return-void
.end method

.method private static a(Landroid/content/Context;Lcom/google/android/gms/internal/ax;Lcom/google/android/gms/internal/bf;Lcom/google/android/gms/internal/cx;)Lcom/google/android/gms/internal/cz;
    .locals 7

    const-string v0, "Starting ad request from service."

    invoke-static {v0}, Lcom/google/android/gms/internal/dw;->v(Ljava/lang/String;)V

    invoke-interface {p2}, Lcom/google/android/gms/internal/bf;->init()V

    new-instance v0, Lcom/google/android/gms/internal/dg;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/dg;-><init>(Landroid/content/Context;)V

    iget v1, v0, Lcom/google/android/gms/internal/dg;->qk:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    const-string v0, "Device is offline."

    invoke-static {v0}, Lcom/google/android/gms/internal/dw;->v(Ljava/lang/String;)V

    new-instance v0, Lcom/google/android/gms/internal/cz;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/cz;-><init>(I)V

    :goto_0
    return-object v0

    :cond_0
    new-instance v3, Lcom/google/android/gms/internal/de;

    iget-object v1, p3, Lcom/google/android/gms/internal/cx;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-direct {v3, v1}, Lcom/google/android/gms/internal/de;-><init>(Ljava/lang/String;)V

    iget-object v1, p3, Lcom/google/android/gms/internal/cx;->pg:Lcom/google/android/gms/internal/ah;

    iget-object v1, v1, Lcom/google/android/gms/internal/ah;->extras:Landroid/os/Bundle;

    if-eqz v1, :cond_1

    iget-object v1, p3, Lcom/google/android/gms/internal/cx;->pg:Lcom/google/android/gms/internal/ah;

    iget-object v1, v1, Lcom/google/android/gms/internal/ah;->extras:Landroid/os/Bundle;

    const-string v2, "_ad"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-static {p0, p3, v1}, Lcom/google/android/gms/internal/dd;->a(Landroid/content/Context;Lcom/google/android/gms/internal/cx;Ljava/lang/String;)Lcom/google/android/gms/internal/cz;

    move-result-object v0

    goto :goto_0

    :cond_1
    const-wide/16 v1, 0xfa

    invoke-interface {p2, v1, v2}, Lcom/google/android/gms/internal/bf;->a(J)Landroid/location/Location;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ax;->aH()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ax;->aI()Ljava/lang/String;

    move-result-object v2

    invoke-static {p3, v0, v1, v2}, Lcom/google/android/gms/internal/dd;->a(Lcom/google/android/gms/internal/cx;Lcom/google/android/gms/internal/dg;Landroid/location/Location;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    new-instance v0, Lcom/google/android/gms/internal/cz;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/cz;-><init>(I)V

    goto :goto_0

    :cond_2
    invoke-static {v0}, Lcom/google/android/gms/internal/dc;->p(Ljava/lang/String;)Lcom/google/android/gms/internal/ea$a;

    move-result-object v4

    sget-object v6, Lcom/google/android/gms/internal/dv;->rp:Landroid/os/Handler;

    new-instance v0, Lcom/google/android/gms/internal/dc$1;

    move-object v1, p0

    move-object v2, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/dc$1;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/cx;Lcom/google/android/gms/internal/de;Lcom/google/android/gms/internal/ea$a;Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    invoke-virtual {v3}, Lcom/google/android/gms/internal/de;->bj()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    new-instance v0, Lcom/google/android/gms/internal/cz;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/de;->getErrorCode()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/cz;-><init>(I)V

    goto :goto_0

    :cond_3
    iget-object v1, p3, Lcom/google/android/gms/internal/cx;->kK:Lcom/google/android/gms/internal/dx;

    iget-object v1, v1, Lcom/google/android/gms/internal/dx;->rq:Ljava/lang/String;

    invoke-static {p0, v1, v0}, Lcom/google/android/gms/internal/dc;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/cz;

    move-result-object v0

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/cz;
    .locals 10

    const/16 v9, 0x12c

    const/4 v4, 0x0

    :try_start_0
    new-instance v1, Lcom/google/android/gms/internal/df;

    invoke-direct {v1}, Lcom/google/android/gms/internal/df;-><init>()V

    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    move-object v5, v0

    :goto_0
    invoke-virtual {v5}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v6, 0x0

    :try_start_1
    invoke-static {p0, p1, v6, v0}, Lcom/google/android/gms/internal/dq;->a(Landroid/content/Context;Ljava/lang/String;ZLjava/net/HttpURLConnection;)V

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v6

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v7

    const/16 v8, 0xc8

    if-lt v6, v8, :cond_0

    if-ge v6, v9, :cond_0

    invoke-virtual {v5}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/io/InputStreamReader;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v8

    invoke-direct {v5, v8}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-static {v5}, Lcom/google/android/gms/internal/dq;->a(Ljava/lang/Readable;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v7, v5, v6}, Lcom/google/android/gms/internal/dc;->a(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;I)V

    invoke-virtual {v1, v4, v7, v5}, Lcom/google/android/gms/internal/df;->a(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/df;->g(J)Lcom/google/android/gms/internal/cz;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    :try_start_2
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-object v0, v1

    :goto_1
    return-object v0

    :cond_0
    :try_start_3
    invoke-virtual {v5}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v8, 0x0

    invoke-static {v5, v7, v8, v6}, Lcom/google/android/gms/internal/dc;->a(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;I)V

    if-lt v6, v9, :cond_2

    const/16 v5, 0x190

    if-ge v6, v5, :cond_2

    const-string v5, "Location"

    invoke-virtual {v0, v5}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    const-string v1, "No location header to follow redirect."

    invoke-static {v1}, Lcom/google/android/gms/internal/dw;->z(Ljava/lang/String;)V

    new-instance v1, Lcom/google/android/gms/internal/cz;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/cz;-><init>(I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    move-object v0, v1

    goto :goto_1

    :cond_1
    :try_start_5
    new-instance v6, Ljava/net/URL;

    invoke-direct {v6, v5}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    add-int/lit8 v4, v4, 0x1

    const/4 v5, 0x5

    if-le v4, v5, :cond_3

    const-string v1, "Too many redirects."

    invoke-static {v1}, Lcom/google/android/gms/internal/dw;->z(Ljava/lang/String;)V

    new-instance v1, Lcom/google/android/gms/internal/cz;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/cz;-><init>(I)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0

    move-object v0, v1

    goto :goto_1

    :cond_2
    :try_start_7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Received error HTTP response code: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/dw;->z(Ljava/lang/String;)V

    new-instance v1, Lcom/google/android/gms/internal/cz;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/cz;-><init>(I)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :try_start_8
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0

    move-object v0, v1

    goto :goto_1

    :cond_3
    :try_start_9
    invoke-virtual {v1, v7}, Lcom/google/android/gms/internal/df;->e(Ljava/util/Map;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    :try_start_a
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    move-object v5, v6

    goto/16 :goto_0

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    throw v1
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error while connecting to ad server: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/dw;->z(Ljava/lang/String;)V

    new-instance v0, Lcom/google/android/gms/internal/cz;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/cz;-><init>(I)V

    goto/16 :goto_1
.end method

.method public static a(Landroid/content/Context;Lcom/google/android/gms/internal/ax;Lcom/google/android/gms/internal/bf;)Lcom/google/android/gms/internal/dc;
    .locals 3

    sget-object v0, Lcom/google/android/gms/internal/dc;->px:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/google/android/gms/internal/dc;->py:Lcom/google/android/gms/internal/dc;

    if-nez v1, :cond_0

    new-instance v1, Lcom/google/android/gms/internal/dc;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, p1, p2}, Lcom/google/android/gms/internal/dc;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ax;Lcom/google/android/gms/internal/bf;)V

    sput-object v1, Lcom/google/android/gms/internal/dc;->py:Lcom/google/android/gms/internal/dc;

    :cond_0
    sget-object v1, Lcom/google/android/gms/internal/dc;->py:Lcom/google/android/gms/internal/dc;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private static a(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;I)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    const/4 v0, 0x2

    invoke-static {v0}, Lcom/google/android/gms/internal/dw;->n(I)Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Http Response: {\n  URL:\n    "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n  Headers:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/dw;->y(Ljava/lang/String;)V

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "    "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/dw;->y(Ljava/lang/String;)V

    invoke-interface {p1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "      "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/internal/dw;->y(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v0, "  Body:"

    invoke-static {v0}, Lcom/google/android/gms/internal/dw;->y(Ljava/lang/String;)V

    if-eqz p2, :cond_2

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    const v2, 0x186a0

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    if-ge v0, v1, :cond_3

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit16 v2, v0, 0x3e8

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/dw;->y(Ljava/lang/String;)V

    add-int/lit16 v0, v0, 0x3e8

    goto :goto_1

    :cond_2
    const-string v0, "    null"

    invoke-static {v0}, Lcom/google/android/gms/internal/dw;->y(Ljava/lang/String;)V

    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  Response Code:\n    "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/dw;->y(Ljava/lang/String;)V

    :cond_4
    return-void
.end method

.method private static p(Ljava/lang/String;)Lcom/google/android/gms/internal/ea$a;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/dc$2;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/dc$2;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public b(Lcom/google/android/gms/internal/cx;)Lcom/google/android/gms/internal/cz;
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/dc;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/gms/internal/dc;->pA:Lcom/google/android/gms/internal/ax;

    iget-object v2, p0, Lcom/google/android/gms/internal/dc;->pz:Lcom/google/android/gms/internal/bf;

    invoke-static {v0, v1, v2, p1}, Lcom/google/android/gms/internal/dc;->a(Landroid/content/Context;Lcom/google/android/gms/internal/ax;Lcom/google/android/gms/internal/bf;Lcom/google/android/gms/internal/cx;)Lcom/google/android/gms/internal/cz;

    move-result-object v0

    return-object v0
.end method
