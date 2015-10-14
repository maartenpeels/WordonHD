.class public Lcom/chartboost/sdk/impl/be;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/chartboost/sdk/impl/be$c;,
        Lcom/chartboost/sdk/impl/be$b;,
        Lcom/chartboost/sdk/impl/be$a;
    }
.end annotation


# static fields
.field public static a:Lcom/chartboost/sdk/impl/be;

.field private static final b:Ljava/lang/String;

.field private static c:Lcom/chartboost/sdk/Libraries/h;

.field private static d:Lcom/chartboost/sdk/impl/m;

.field private static e:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/chartboost/sdk/impl/be$b;",
            ">;"
        }
    .end annotation
.end field

.field private static f:Lcom/chartboost/sdk/impl/be$a;

.field private static g:Lcom/chartboost/sdk/impl/be$a;

.field private static h:Ljava/util/concurrent/atomic/AtomicInteger;

.field private static i:Ljava/util/concurrent/atomic/AtomicInteger;

.field private static j:Z

.field private static k:Lcom/chartboost/sdk/Model/a;

.field private static l:Z

.field private static m:Ljava/util/Observer;

.field private static n:Lcom/chartboost/sdk/impl/ba$c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 82
    const-class v0, Lcom/chartboost/sdk/impl/be;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/chartboost/sdk/impl/be;->b:Ljava/lang/String;

    .line 97
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    sput-object v0, Lcom/chartboost/sdk/impl/be;->h:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 100
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    sput-object v0, Lcom/chartboost/sdk/impl/be;->i:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 103
    const/4 v0, 0x1

    sput-boolean v0, Lcom/chartboost/sdk/impl/be;->j:Z

    .line 107
    const/4 v0, 0x0

    sput-boolean v0, Lcom/chartboost/sdk/impl/be;->l:Z

    .line 111
    new-instance v0, Lcom/chartboost/sdk/impl/be$1;

    invoke-direct {v0}, Lcom/chartboost/sdk/impl/be$1;-><init>()V

    sput-object v0, Lcom/chartboost/sdk/impl/be;->m:Ljava/util/Observer;

    .line 209
    new-instance v0, Lcom/chartboost/sdk/impl/be$2;

    invoke-direct {v0}, Lcom/chartboost/sdk/impl/be$2;-><init>()V

    sput-object v0, Lcom/chartboost/sdk/impl/be;->n:Lcom/chartboost/sdk/impl/ba$c;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 123
    return-void
.end method

.method static synthetic a(Lcom/chartboost/sdk/impl/be$a;)Lcom/chartboost/sdk/impl/be$a;
    .locals 0

    .prologue
    .line 51
    sput-object p0, Lcom/chartboost/sdk/impl/be;->f:Lcom/chartboost/sdk/impl/be$a;

    return-object p0
.end method

.method public static declared-synchronized a()Lcom/chartboost/sdk/impl/be;
    .locals 2

    .prologue
    .line 130
    const-class v0, Lcom/chartboost/sdk/impl/be;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/chartboost/sdk/impl/be;->a:Lcom/chartboost/sdk/impl/be;

    if-nez v1, :cond_0

    .line 131
    new-instance v1, Lcom/chartboost/sdk/impl/be;

    invoke-direct {v1}, Lcom/chartboost/sdk/impl/be;-><init>()V

    sput-object v1, Lcom/chartboost/sdk/impl/be;->a:Lcom/chartboost/sdk/impl/be;

    .line 132
    invoke-static {}, Lcom/chartboost/sdk/impl/be;->m()V

    .line 134
    :cond_0
    sget-object v1, Lcom/chartboost/sdk/impl/be;->a:Lcom/chartboost/sdk/impl/be;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 130
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 398
    sget-object v0, Lcom/chartboost/sdk/impl/be;->c:Lcom/chartboost/sdk/Libraries/h;

    invoke-virtual {v0, p0}, Lcom/chartboost/sdk/Libraries/h;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 399
    sget-object v0, Lcom/chartboost/sdk/impl/be;->c:Lcom/chartboost/sdk/Libraries/h;

    invoke-virtual {v0, p0}, Lcom/chartboost/sdk/Libraries/h;->d(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 401
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static declared-synchronized a(Lcom/chartboost/sdk/Libraries/e$a;)V
    .locals 8

    .prologue
    const/4 v4, 0x0

    const-string v0, "video"

    const-string v0, "id"

    .line 234
    const-class v0, Lcom/chartboost/sdk/impl/be;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/chartboost/sdk/Tracking/a;->e()V

    .line 236
    if-eqz p0, :cond_6

    .line 237
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 238
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 239
    invoke-static {}, Lcom/chartboost/sdk/impl/be;->c()[Ljava/lang/String;

    move-result-object v3

    .line 240
    :goto_0
    invoke-virtual {p0}, Lcom/chartboost/sdk/Libraries/e$a;->o()I

    move-result v5

    if-ge v4, v5, :cond_3

    .line 241
    invoke-virtual {p0, v4}, Lcom/chartboost/sdk/Libraries/e$a;->c(I)Lcom/chartboost/sdk/Libraries/e$a;

    move-result-object v5

    .line 242
    const-string v6, "id"

    invoke-virtual {v5, v6}, Lcom/chartboost/sdk/Libraries/e$a;->b(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    const-string v6, "video"

    invoke-virtual {v5, v6}, Lcom/chartboost/sdk/Libraries/e$a;->b(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 240
    :cond_0
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 244
    :cond_1
    const-string v6, "id"

    invoke-virtual {v5, v6}, Lcom/chartboost/sdk/Libraries/e$a;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 245
    const-string v7, "video"

    invoke-virtual {v5, v7}, Lcom/chartboost/sdk/Libraries/e$a;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 246
    sget-object v7, Lcom/chartboost/sdk/impl/be;->c:Lcom/chartboost/sdk/Libraries/h;

    invoke-virtual {v7, v6}, Lcom/chartboost/sdk/Libraries/h;->c(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 247
    invoke-virtual {v2, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 248
    sget-object v7, Lcom/chartboost/sdk/impl/be;->i:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 250
    :cond_2
    invoke-virtual {v1, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 234
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1

    .line 252
    :cond_3
    :try_start_1
    invoke-virtual {v2}, Ljava/util/HashMap;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_4

    .line 253
    sget-object v4, Lcom/chartboost/sdk/impl/be$a;->b:Lcom/chartboost/sdk/impl/be$a;

    sput-object v4, Lcom/chartboost/sdk/impl/be;->g:Lcom/chartboost/sdk/impl/be$a;

    .line 255
    :cond_4
    sget-boolean v4, Lcom/chartboost/sdk/impl/be;->j:Z

    if-eqz v4, :cond_5

    .line 256
    const/4 v4, 0x0

    sput-boolean v4, Lcom/chartboost/sdk/impl/be;->j:Z

    .line 257
    :cond_5
    sget-object v4, Lcom/chartboost/sdk/impl/be;->b:Ljava/lang/String;

    const-string v5, "synchronizeVideos: Delete and Download new videos"

    invoke-static {v4, v5}, Lcom/chartboost/sdk/Libraries/CBLogging;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 259
    invoke-static {v1, v3}, Lcom/chartboost/sdk/impl/be;->a(Ljava/util/HashMap;[Ljava/lang/String;)V

    .line 261
    invoke-static {}, Lcom/chartboost/sdk/b;->t()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 262
    invoke-static {v2}, Lcom/chartboost/sdk/impl/be;->a(Ljava/util/HashMap;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 264
    :cond_6
    monitor-exit v0

    return-void
.end method

.method public static declared-synchronized a(Lcom/chartboost/sdk/Model/a;)V
    .locals 2

    .prologue
    .line 461
    const-class v0, Lcom/chartboost/sdk/impl/be;

    monitor-enter v0

    :try_start_0
    sput-object p0, Lcom/chartboost/sdk/impl/be;->k:Lcom/chartboost/sdk/Model/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 462
    monitor-exit v0

    return-void

    .line 461
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private static declared-synchronized a(Ljava/util/HashMap;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 290
    const-class v2, Lcom/chartboost/sdk/impl/be;

    monitor-enter v2

    :try_start_0
    sget-object v0, Lcom/chartboost/sdk/impl/be;->b:Ljava/lang/String;

    const-string v1, "downloadVideos: Downloading videos from server"

    invoke-static {v0, v1}, Lcom/chartboost/sdk/Libraries/CBLogging;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 291
    invoke-virtual {p0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 292
    new-instance v4, Lcom/chartboost/sdk/impl/be$c;

    const/4 v1, 0x0

    invoke-direct {v4, v1}, Lcom/chartboost/sdk/impl/be$c;-><init>(Lcom/chartboost/sdk/impl/be$1;)V

    .line 293
    new-instance v5, Lcom/chartboost/sdk/impl/be$b;

    const/4 v6, 0x0

    invoke-virtual {p0, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {v5, v6, v1, v4, v0}, Lcom/chartboost/sdk/impl/be$b;-><init>(ILjava/lang/String;Lcom/chartboost/sdk/impl/be$c;Ljava/lang/String;)V

    .line 294
    new-instance v1, Lcom/chartboost/sdk/impl/d;

    const/16 v6, 0x7530

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct {v1, v6, v7, v8}, Lcom/chartboost/sdk/impl/d;-><init>(IIF)V

    invoke-virtual {v5, v1}, Lcom/chartboost/sdk/impl/be$b;->a(Lcom/chartboost/sdk/impl/p;)Lcom/chartboost/sdk/impl/l;

    .line 297
    invoke-static {v4, v5}, Lcom/chartboost/sdk/impl/be$c;->a(Lcom/chartboost/sdk/impl/be$c;Lcom/chartboost/sdk/impl/be$b;)Lcom/chartboost/sdk/impl/be$b;

    .line 298
    sget-object v1, Lcom/chartboost/sdk/impl/be;->m:Ljava/util/Observer;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v5, v1}, Lcom/chartboost/sdk/impl/be$b;->a(Ljava/lang/Object;)Lcom/chartboost/sdk/impl/l;

    .line 299
    invoke-virtual {p0, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/chartboost/sdk/Tracking/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 300
    sget-object v0, Lcom/chartboost/sdk/impl/be;->d:Lcom/chartboost/sdk/impl/m;

    invoke-virtual {v0, v5}, Lcom/chartboost/sdk/impl/m;->a(Lcom/chartboost/sdk/impl/l;)Lcom/chartboost/sdk/impl/l;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 290
    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0

    .line 302
    :cond_0
    monitor-exit v2

    return-void
.end method

.method private static declared-synchronized a(Ljava/util/HashMap;[Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 272
    const-class v0, Lcom/chartboost/sdk/impl/be;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/chartboost/sdk/impl/be;->b:Ljava/lang/String;

    const-string v2, "deleteVideos: Deleteing videos in cache"

    invoke-static {v1, v2}, Lcom/chartboost/sdk/Libraries/CBLogging;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 273
    if-eqz p0, :cond_1

    if-eqz p1, :cond_1

    .line 274
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p1, v2

    .line 275
    invoke-virtual {p0, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 276
    sget-object v4, Lcom/chartboost/sdk/impl/be;->c:Lcom/chartboost/sdk/Libraries/h;

    invoke-virtual {v4, v3}, Lcom/chartboost/sdk/Libraries/h;->d(Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    .line 277
    if-eqz v3, :cond_0

    .line 278
    sget-object v4, Lcom/chartboost/sdk/impl/be;->c:Lcom/chartboost/sdk/Libraries/h;

    invoke-virtual {v4, v3}, Lcom/chartboost/sdk/Libraries/h;->c(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 274
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 282
    :cond_1
    monitor-exit v0

    return-void

    .line 272
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method static synthetic b(Lcom/chartboost/sdk/impl/be$a;)Lcom/chartboost/sdk/impl/be$a;
    .locals 0

    .prologue
    .line 51
    sput-object p0, Lcom/chartboost/sdk/impl/be;->g:Lcom/chartboost/sdk/impl/be$a;

    return-object p0
.end method

.method public static b(Lcom/chartboost/sdk/Libraries/e$a;)Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 405
    if-nez p0, :cond_0

    move-object v0, v2

    .line 424
    :goto_0
    return-object v0

    .line 408
    :cond_0
    const-string v0, "assets"

    invoke-virtual {p0, v0}, Lcom/chartboost/sdk/Libraries/e$a;->a(Ljava/lang/String;)Lcom/chartboost/sdk/Libraries/e$a;

    move-result-object v0

    .line 410
    invoke-virtual {v0}, Lcom/chartboost/sdk/Libraries/e$a;->b()Z

    move-result v1

    if-eqz v1, :cond_1

    move-object v0, v2

    .line 411
    goto :goto_0

    .line 413
    :cond_1
    invoke-static {}, Lcom/chartboost/sdk/Libraries/CBUtility;->c()Lcom/chartboost/sdk/Libraries/f;

    move-result-object v1

    .line 414
    invoke-virtual {v1}, Lcom/chartboost/sdk/Libraries/f;->b()Z

    move-result v1

    .line 415
    if-eqz v1, :cond_2

    const-string v1, "video-portrait"

    :goto_1
    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/Libraries/e$a;->a(Ljava/lang/String;)Lcom/chartboost/sdk/Libraries/e$a;

    move-result-object v0

    .line 417
    invoke-virtual {v0}, Lcom/chartboost/sdk/Libraries/e$a;->b()Z

    move-result v1

    if-eqz v1, :cond_3

    move-object v0, v2

    .line 418
    goto :goto_0

    .line 415
    :cond_2
    const-string v1, "video-landscape"

    goto :goto_1

    .line 420
    :cond_3
    const-string v1, "id"

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/Libraries/e$a;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 421
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    move-object v0, v2

    .line 422
    goto :goto_0

    .line 423
    :cond_4
    invoke-static {v0}, Lcom/chartboost/sdk/impl/be;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static declared-synchronized b()V
    .locals 9

    .prologue
    const/4 v4, 0x0

    .line 159
    const-class v0, Lcom/chartboost/sdk/impl/be;

    monitor-enter v0

    :try_start_0
    sget-boolean v1, Lcom/chartboost/sdk/impl/be;->l:Z

    if-nez v1, :cond_0

    .line 160
    invoke-static {}, Lcom/chartboost/sdk/impl/be;->m()V

    .line 162
    :cond_0
    sget-object v1, Lcom/chartboost/sdk/impl/be;->b:Ljava/lang/String;

    const-string v2, "Calling Prfetch Video"

    invoke-static {v1, v2}, Lcom/chartboost/sdk/Libraries/CBLogging;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 165
    sget-object v1, Lcom/chartboost/sdk/impl/be$a;->b:Lcom/chartboost/sdk/impl/be$a;

    sget-object v2, Lcom/chartboost/sdk/impl/be;->f:Lcom/chartboost/sdk/impl/be$a;

    if-eq v1, v2, :cond_1

    sget-object v1, Lcom/chartboost/sdk/impl/be$a;->b:Lcom/chartboost/sdk/impl/be$a;

    sget-object v2, Lcom/chartboost/sdk/impl/be;->g:Lcom/chartboost/sdk/impl/be$a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v1, v2, :cond_2

    .line 204
    :cond_1
    :goto_0
    monitor-exit v0

    return-void

    .line 169
    :cond_2
    :try_start_1
    sget-object v1, Lcom/chartboost/sdk/impl/be;->e:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v1, :cond_3

    sget-object v1, Lcom/chartboost/sdk/impl/be;->e:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    .line 170
    sget-object v1, Lcom/chartboost/sdk/impl/be;->e:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 171
    sget-object v1, Lcom/chartboost/sdk/impl/be;->d:Lcom/chartboost/sdk/impl/m;

    sget-object v2, Lcom/chartboost/sdk/impl/be;->m:Ljava/util/Observer;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/chartboost/sdk/impl/m;->a(Ljava/lang/Object;)V

    .line 172
    sget-object v1, Lcom/chartboost/sdk/impl/be$a;->a:Lcom/chartboost/sdk/impl/be$a;

    sput-object v1, Lcom/chartboost/sdk/impl/be;->g:Lcom/chartboost/sdk/impl/be$a;

    .line 173
    sget-object v1, Lcom/chartboost/sdk/impl/be;->b:Ljava/lang/String;

    const-string v2, "prefetchVideo: Clearing all volley request for new start"

    invoke-static {v1, v2}, Lcom/chartboost/sdk/Libraries/CBLogging;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 177
    :cond_3
    sget-object v1, Lcom/chartboost/sdk/impl/be$a;->b:Lcom/chartboost/sdk/impl/be$a;

    sput-object v1, Lcom/chartboost/sdk/impl/be;->f:Lcom/chartboost/sdk/impl/be$a;

    .line 180
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 181
    invoke-static {}, Lcom/chartboost/sdk/impl/be;->c()[Ljava/lang/String;

    move-result-object v2

    .line 182
    if-eqz v2, :cond_4

    .line 183
    invoke-static {}, Lcom/chartboost/sdk/impl/be;->c()[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    :goto_1
    if-ge v4, v3, :cond_4

    aget-object v5, v2, v4

    .line 184
    invoke-virtual {v1, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 183
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 188
    :cond_4
    invoke-static {}, Lcom/chartboost/sdk/Tracking/a;->d()V

    .line 191
    sget-object v2, Lcom/chartboost/sdk/impl/be;->i:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 192
    sget-object v2, Lcom/chartboost/sdk/impl/be;->h:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 195
    new-instance v2, Lcom/chartboost/sdk/impl/ba;

    const-string v3, "/api/video-prefetch"

    invoke-direct {v2, v3}, Lcom/chartboost/sdk/impl/ba;-><init>(Ljava/lang/String;)V

    .line 196
    const-string v3, "local-videos"

    invoke-virtual {v2, v3, v1}, Lcom/chartboost/sdk/impl/ba;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 197
    const/4 v1, 0x2

    new-array v1, v1, [Lcom/chartboost/sdk/Libraries/g$k;

    const/4 v3, 0x0

    const-string v4, "status"

    sget-object v5, Lcom/chartboost/sdk/Libraries/a;->a:Lcom/chartboost/sdk/Libraries/g$a;

    invoke-static {v4, v5}, Lcom/chartboost/sdk/Libraries/g;->a(Ljava/lang/String;Lcom/chartboost/sdk/Libraries/g$a;)Lcom/chartboost/sdk/Libraries/g$k;

    move-result-object v4

    aput-object v4, v1, v3

    const/4 v3, 0x1

    const-string v4, "videos"

    const/4 v5, 0x2

    new-array v5, v5, [Lcom/chartboost/sdk/Libraries/g$k;

    const/4 v6, 0x0

    const-string v7, "video"

    invoke-static {}, Lcom/chartboost/sdk/Libraries/g;->a()Lcom/chartboost/sdk/Libraries/g$a;

    move-result-object v8

    invoke-static {v8}, Lcom/chartboost/sdk/Libraries/g;->a(Lcom/chartboost/sdk/Libraries/g$a;)Lcom/chartboost/sdk/Libraries/g$a;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/chartboost/sdk/Libraries/g;->a(Ljava/lang/String;Lcom/chartboost/sdk/Libraries/g$a;)Lcom/chartboost/sdk/Libraries/g$k;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-string v7, "id"

    invoke-static {}, Lcom/chartboost/sdk/Libraries/g;->a()Lcom/chartboost/sdk/Libraries/g$a;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/chartboost/sdk/Libraries/g;->a(Ljava/lang/String;Lcom/chartboost/sdk/Libraries/g$a;)Lcom/chartboost/sdk/Libraries/g$k;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v5}, Lcom/chartboost/sdk/Libraries/g;->a([Lcom/chartboost/sdk/Libraries/g$k;)Lcom/chartboost/sdk/Libraries/g$a;

    move-result-object v5

    invoke-static {v5}, Lcom/chartboost/sdk/Libraries/g;->b(Lcom/chartboost/sdk/Libraries/g$a;)Lcom/chartboost/sdk/Libraries/g$a;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/chartboost/sdk/Libraries/g;->a(Ljava/lang/String;Lcom/chartboost/sdk/Libraries/g$a;)Lcom/chartboost/sdk/Libraries/g$k;

    move-result-object v4

    aput-object v4, v1, v3

    invoke-static {v1}, Lcom/chartboost/sdk/Libraries/g;->a([Lcom/chartboost/sdk/Libraries/g$k;)Lcom/chartboost/sdk/Libraries/g$a;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/chartboost/sdk/impl/ba;->a(Lcom/chartboost/sdk/Libraries/g$a;)V

    .line 202
    const/4 v1, 0x1

    invoke-virtual {v2, v1}, Lcom/chartboost/sdk/impl/ba;->b(Z)V

    .line 203
    sget-object v1, Lcom/chartboost/sdk/impl/be;->n:Lcom/chartboost/sdk/impl/ba$c;

    invoke-virtual {v2, v1}, Lcom/chartboost/sdk/impl/ba;->a(Lcom/chartboost/sdk/impl/ba$c;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 159
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static b(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 428
    sget-object v0, Lcom/chartboost/sdk/impl/be;->c:Lcom/chartboost/sdk/Libraries/h;

    invoke-virtual {v0, p0}, Lcom/chartboost/sdk/Libraries/h;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 429
    sget-object v0, Lcom/chartboost/sdk/impl/be;->c:Lcom/chartboost/sdk/Libraries/h;

    invoke-virtual {v0, p0}, Lcom/chartboost/sdk/Libraries/h;->b(Ljava/lang/String;)V

    .line 430
    :cond_0
    return-void
.end method

.method public static declared-synchronized b(Lcom/chartboost/sdk/Model/a;)Z
    .locals 3

    .prologue
    .line 467
    const-class v0, Lcom/chartboost/sdk/impl/be;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/chartboost/sdk/impl/be;->e()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 468
    sget-object v1, Lcom/chartboost/sdk/impl/be;->b:Ljava/lang/String;

    const-string v2, "Saving video impression request for video prefetch completion"

    invoke-static {v1, v2}, Lcom/chartboost/sdk/Libraries/CBLogging;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 469
    invoke-static {p0}, Lcom/chartboost/sdk/impl/be;->a(Lcom/chartboost/sdk/Model/a;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 470
    const/4 v1, 0x1

    .line 472
    :goto_0
    monitor-exit v0

    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 467
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method static synthetic c(Lcom/chartboost/sdk/Model/a;)Lcom/chartboost/sdk/Model/a;
    .locals 0

    .prologue
    .line 51
    sput-object p0, Lcom/chartboost/sdk/impl/be;->k:Lcom/chartboost/sdk/Model/a;

    return-object p0
.end method

.method public static c(Lcom/chartboost/sdk/Libraries/e$a;)Z
    .locals 1

    .prologue
    .line 435
    invoke-static {p0}, Lcom/chartboost/sdk/impl/be;->b(Lcom/chartboost/sdk/Libraries/e$a;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static c()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 308
    sget-object v0, Lcom/chartboost/sdk/impl/be;->c:Lcom/chartboost/sdk/Libraries/h;

    if-nez v0, :cond_0

    .line 309
    const/4 v0, 0x0

    .line 310
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/chartboost/sdk/impl/be;->c:Lcom/chartboost/sdk/Libraries/h;

    invoke-virtual {v0}, Lcom/chartboost/sdk/Libraries/h;->a()[Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static declared-synchronized d()V
    .locals 3

    .prologue
    .line 394
    const-class v0, Lcom/chartboost/sdk/impl/be;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/chartboost/sdk/impl/be;->d:Lcom/chartboost/sdk/impl/m;

    sget-object v2, Lcom/chartboost/sdk/impl/be;->m:Ljava/util/Observer;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/chartboost/sdk/impl/m;->a(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 395
    monitor-exit v0

    return-void

    .line 394
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized e()Z
    .locals 3

    .prologue
    .line 439
    const-class v0, Lcom/chartboost/sdk/impl/be;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/chartboost/sdk/impl/be;->g:Lcom/chartboost/sdk/impl/be$a;

    sget-object v2, Lcom/chartboost/sdk/impl/be$a;->b:Lcom/chartboost/sdk/impl/be$a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v1, v2, :cond_0

    .line 440
    const/4 v1, 0x1

    .line 441
    :goto_0
    monitor-exit v0

    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 439
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method static synthetic f()V
    .locals 0

    .prologue
    .line 51
    invoke-static {}, Lcom/chartboost/sdk/impl/be;->n()V

    return-void
.end method

.method static synthetic g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    sget-object v0, Lcom/chartboost/sdk/impl/be;->b:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic h()Lcom/chartboost/sdk/Libraries/h;
    .locals 1

    .prologue
    .line 51
    sget-object v0, Lcom/chartboost/sdk/impl/be;->c:Lcom/chartboost/sdk/Libraries/h;

    return-object v0
.end method

.method static synthetic i()Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1

    .prologue
    .line 51
    sget-object v0, Lcom/chartboost/sdk/impl/be;->i:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method static synthetic j()Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1

    .prologue
    .line 51
    sget-object v0, Lcom/chartboost/sdk/impl/be;->h:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method static synthetic k()Lcom/chartboost/sdk/Model/a;
    .locals 1

    .prologue
    .line 51
    sget-object v0, Lcom/chartboost/sdk/impl/be;->k:Lcom/chartboost/sdk/Model/a;

    return-object v0
.end method

.method static synthetic l()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1

    .prologue
    .line 51
    sget-object v0, Lcom/chartboost/sdk/impl/be;->e:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method private static declared-synchronized m()V
    .locals 4

    .prologue
    .line 141
    const-class v0, Lcom/chartboost/sdk/impl/be;

    monitor-enter v0

    :try_start_0
    sget-boolean v1, Lcom/chartboost/sdk/impl/be;->l:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 153
    :goto_0
    monitor-exit v0

    return-void

    .line 143
    :cond_0
    const/4 v1, 0x1

    :try_start_1
    sput-boolean v1, Lcom/chartboost/sdk/impl/be;->l:Z

    .line 145
    new-instance v1, Lcom/chartboost/sdk/Libraries/h;

    const-string v2, "CBVideoDirectory"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/chartboost/sdk/Libraries/h;-><init>(Ljava/lang/String;Z)V

    sput-object v1, Lcom/chartboost/sdk/impl/be;->c:Lcom/chartboost/sdk/Libraries/h;

    .line 146
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v1, Lcom/chartboost/sdk/impl/be;->e:Ljava/util/concurrent/ConcurrentHashMap;

    .line 147
    sget-object v1, Lcom/chartboost/sdk/impl/be$a;->a:Lcom/chartboost/sdk/impl/be$a;

    sput-object v1, Lcom/chartboost/sdk/impl/be;->f:Lcom/chartboost/sdk/impl/be$a;

    .line 148
    sget-object v1, Lcom/chartboost/sdk/impl/be$a;->a:Lcom/chartboost/sdk/impl/be$a;

    sput-object v1, Lcom/chartboost/sdk/impl/be;->g:Lcom/chartboost/sdk/impl/be$a;

    .line 149
    invoke-static {}, Lcom/chartboost/sdk/b;->l()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/chartboost/sdk/impl/bb;->a(Landroid/content/Context;)Lcom/chartboost/sdk/impl/bb;

    move-result-object v1

    invoke-virtual {v1}, Lcom/chartboost/sdk/impl/bb;->a()Lcom/chartboost/sdk/impl/m;

    move-result-object v1

    sput-object v1, Lcom/chartboost/sdk/impl/be;->d:Lcom/chartboost/sdk/impl/m;

    .line 152
    invoke-static {}, Lcom/chartboost/sdk/impl/az;->a()Lcom/chartboost/sdk/impl/az;

    move-result-object v1

    sget-object v2, Lcom/chartboost/sdk/impl/be;->m:Ljava/util/Observer;

    invoke-virtual {v1, v2}, Lcom/chartboost/sdk/impl/az;->addObserver(Ljava/util/Observer;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 141
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private static declared-synchronized n()V
    .locals 5

    .prologue
    .line 446
    const-class v2, Lcom/chartboost/sdk/impl/be;

    monitor-enter v2

    :try_start_0
    sget-object v0, Lcom/chartboost/sdk/impl/be;->b:Ljava/lang/String;

    const-string v1, "Process Request called"

    invoke-static {v0, v1}, Lcom/chartboost/sdk/Libraries/CBLogging;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 447
    sget-object v0, Lcom/chartboost/sdk/impl/be;->f:Lcom/chartboost/sdk/impl/be$a;

    sget-object v1, Lcom/chartboost/sdk/impl/be$a;->b:Lcom/chartboost/sdk/impl/be$a;

    if-eq v0, v1, :cond_0

    sget-object v0, Lcom/chartboost/sdk/impl/be;->g:Lcom/chartboost/sdk/impl/be$a;

    sget-object v1, Lcom/chartboost/sdk/impl/be$a;->b:Lcom/chartboost/sdk/impl/be$a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, v1, :cond_1

    .line 458
    :cond_0
    monitor-exit v2

    return-void

    .line 449
    :cond_1
    :try_start_1
    sget-object v0, Lcom/chartboost/sdk/impl/be;->g:Lcom/chartboost/sdk/impl/be$a;

    sget-object v1, Lcom/chartboost/sdk/impl/be$a;->a:Lcom/chartboost/sdk/impl/be$a;

    if-ne v0, v1, :cond_2

    sget-object v0, Lcom/chartboost/sdk/impl/be;->e:Ljava/util/concurrent/ConcurrentHashMap;

    if-nez v0, :cond_3

    :cond_2
    sget-object v0, Lcom/chartboost/sdk/impl/be;->e:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 451
    :cond_3
    sget-object v0, Lcom/chartboost/sdk/impl/be;->e:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 452
    sget-object v1, Lcom/chartboost/sdk/impl/be$a;->b:Lcom/chartboost/sdk/impl/be$a;

    sput-object v1, Lcom/chartboost/sdk/impl/be;->g:Lcom/chartboost/sdk/impl/be$a;

    .line 453
    sget-object v4, Lcom/chartboost/sdk/impl/be;->d:Lcom/chartboost/sdk/impl/m;

    sget-object v1, Lcom/chartboost/sdk/impl/be;->e:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/chartboost/sdk/impl/l;

    invoke-virtual {v4, v1}, Lcom/chartboost/sdk/impl/m;->a(Lcom/chartboost/sdk/impl/l;)Lcom/chartboost/sdk/impl/l;

    .line 454
    sget-object v1, Lcom/chartboost/sdk/impl/be;->e:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 446
    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0
.end method
