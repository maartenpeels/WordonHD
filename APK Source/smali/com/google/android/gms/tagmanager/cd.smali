.class Lcom/google/android/gms/tagmanager/cd;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/tagmanager/cd$a;
    }
.end annotation


# static fields
.field private static YP:Lcom/google/android/gms/tagmanager/cd;


# instance fields
.field private volatile WJ:Ljava/lang/String;

.field private volatile YQ:Lcom/google/android/gms/tagmanager/cd$a;

.field private volatile YR:Ljava/lang/String;

.field private volatile YS:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/gms/tagmanager/cd;->clear()V

    return-void
.end method

.method private bI(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "&"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    aget-object v0, v0, v1

    return-object v0
.end method

.method private h(Landroid/net/Uri;)Ljava/lang/String;
    .locals 3

    invoke-virtual {p1}, Landroid/net/Uri;->getQuery()Ljava/lang/String;

    move-result-object v0

    const-string v1, "&gtm_debug=x"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static kT()Lcom/google/android/gms/tagmanager/cd;
    .locals 2

    const-class v0, Lcom/google/android/gms/tagmanager/cd;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/google/android/gms/tagmanager/cd;->YP:Lcom/google/android/gms/tagmanager/cd;

    if-nez v1, :cond_0

    new-instance v1, Lcom/google/android/gms/tagmanager/cd;

    invoke-direct {v1}, Lcom/google/android/gms/tagmanager/cd;-><init>()V

    sput-object v1, Lcom/google/android/gms/tagmanager/cd;->YP:Lcom/google/android/gms/tagmanager/cd;

    :cond_0
    sget-object v1, Lcom/google/android/gms/tagmanager/cd;->YP:Lcom/google/android/gms/tagmanager/cd;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method clear()V
    .locals 2

    const/4 v1, 0x0

    sget-object v0, Lcom/google/android/gms/tagmanager/cd$a;->YT:Lcom/google/android/gms/tagmanager/cd$a;

    iput-object v0, p0, Lcom/google/android/gms/tagmanager/cd;->YQ:Lcom/google/android/gms/tagmanager/cd$a;

    iput-object v1, p0, Lcom/google/android/gms/tagmanager/cd;->YR:Ljava/lang/String;

    iput-object v1, p0, Lcom/google/android/gms/tagmanager/cd;->WJ:Ljava/lang/String;

    iput-object v1, p0, Lcom/google/android/gms/tagmanager/cd;->YS:Ljava/lang/String;

    return-void
.end method

.method declared-synchronized g(Landroid/net/Uri;)Z
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UTF-8"

    invoke-static {v0, v1}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    :try_start_1
    const-string v1, "^tagmanager.c.\\S+:\\/\\/preview\\/p\\?id=\\S+&gtm_auth=\\S+&gtm_preview=\\d+(&gtm_debug=x)?$"

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Container preview url: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/tagmanager/bh;->y(Ljava/lang/String;)V

    const-string v1, ".*?&gtm_debug=x$"

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/google/android/gms/tagmanager/cd$a;->YV:Lcom/google/android/gms/tagmanager/cd$a;

    iput-object v0, p0, Lcom/google/android/gms/tagmanager/cd;->YQ:Lcom/google/android/gms/tagmanager/cd$a;

    :goto_0
    invoke-direct {p0, p1}, Lcom/google/android/gms/tagmanager/cd;->h(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/tagmanager/cd;->YS:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/cd;->YQ:Lcom/google/android/gms/tagmanager/cd$a;

    sget-object v1, Lcom/google/android/gms/tagmanager/cd$a;->YU:Lcom/google/android/gms/tagmanager/cd$a;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/cd;->YQ:Lcom/google/android/gms/tagmanager/cd$a;

    sget-object v1, Lcom/google/android/gms/tagmanager/cd$a;->YV:Lcom/google/android/gms/tagmanager/cd$a;

    if-ne v0, v1, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/r?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/tagmanager/cd;->YS:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/tagmanager/cd;->YR:Ljava/lang/String;

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/cd;->YS:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/google/android/gms/tagmanager/cd;->bI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/tagmanager/cd;->WJ:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v0, v4

    :goto_1
    monitor-exit p0

    return v0

    :catch_0
    move-exception v0

    move v0, v3

    goto :goto_1

    :cond_2
    :try_start_2
    sget-object v0, Lcom/google/android/gms/tagmanager/cd$a;->YU:Lcom/google/android/gms/tagmanager/cd$a;

    iput-object v0, p0, Lcom/google/android/gms/tagmanager/cd;->YQ:Lcom/google/android/gms/tagmanager/cd$a;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_3
    :try_start_3
    const-string v1, "^tagmanager.c.\\S+:\\/\\/preview\\/p\\?id=\\S+&gtm_preview=$"

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {p1}, Landroid/net/Uri;->getQuery()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/tagmanager/cd;->bI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/tagmanager/cd;->WJ:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Exit preview mode for container: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/tagmanager/cd;->WJ:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/bh;->y(Ljava/lang/String;)V

    sget-object v0, Lcom/google/android/gms/tagmanager/cd$a;->YT:Lcom/google/android/gms/tagmanager/cd$a;

    iput-object v0, p0, Lcom/google/android/gms/tagmanager/cd;->YQ:Lcom/google/android/gms/tagmanager/cd$a;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/tagmanager/cd;->YR:Ljava/lang/String;

    move v0, v4

    goto :goto_1

    :cond_4
    move v0, v3

    goto :goto_1

    :cond_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid preview uri: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/bh;->z(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move v0, v3

    goto :goto_1
.end method

.method getContainerId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/cd;->WJ:Ljava/lang/String;

    return-object v0
.end method

.method kU()Lcom/google/android/gms/tagmanager/cd$a;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/cd;->YQ:Lcom/google/android/gms/tagmanager/cd$a;

    return-object v0
.end method

.method kV()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/cd;->YR:Ljava/lang/String;

    return-object v0
.end method
