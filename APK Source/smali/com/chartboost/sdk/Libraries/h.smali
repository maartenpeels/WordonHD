.class public Lcom/chartboost/sdk/Libraries/h;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static f:Lcom/chartboost/sdk/Libraries/h;


# instance fields
.field public a:Landroid/content/Context;

.field private b:Ljava/io/File;

.field private c:Ljava/io/File;

.field private d:Ljava/io/File;

.field private e:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 2

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    invoke-static {}, Lcom/chartboost/sdk/b;->l()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/chartboost/sdk/Libraries/h;->a:Landroid/content/Context;

    .line 45
    iget-object v0, p0, Lcom/chartboost/sdk/Libraries/h;->a:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 46
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Cannot find context object"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 48
    :cond_0
    iget-object v0, p0, Lcom/chartboost/sdk/Libraries/h;->a:Landroid/content/Context;

    const-string v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    .line 49
    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/chartboost/sdk/Libraries/h;->e:Z

    .line 51
    if-eqz p1, :cond_2

    .line 52
    invoke-direct {p0, p1, p2}, Lcom/chartboost/sdk/Libraries/h;->a(Ljava/lang/String;Z)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/chartboost/sdk/Libraries/h;->b:Ljava/io/File;

    .line 55
    :goto_1
    return-void

    .line 49
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 54
    :cond_2
    const-string v0, "CBCommonCacheFolder"

    invoke-direct {p0, v0, p2}, Lcom/chartboost/sdk/Libraries/h;->a(Ljava/lang/String;Z)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/chartboost/sdk/Libraries/h;->b:Ljava/io/File;

    goto :goto_1
.end method

.method private a(Ljava/lang/String;Z)Ljava/io/File;
    .locals 4

    .prologue
    const-string v3, "__chartboost"

    .line 64
    iget-object v0, p0, Lcom/chartboost/sdk/Libraries/h;->b:Ljava/io/File;

    if-eqz v0, :cond_1

    .line 65
    iget-object v0, p0, Lcom/chartboost/sdk/Libraries/h;->b:Ljava/io/File;

    .line 84
    :cond_0
    :goto_0
    return-object v0

    .line 70
    :cond_1
    if-eqz p2, :cond_2

    invoke-direct {p0}, Lcom/chartboost/sdk/Libraries/h;->d()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 71
    iget-object v0, p0, Lcom/chartboost/sdk/Libraries/h;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object v0

    .line 72
    new-instance v1, Ljava/io/File;

    const-string v2, "__chartboost"

    invoke-direct {v1, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 73
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 74
    iput-object v0, p0, Lcom/chartboost/sdk/Libraries/h;->d:Ljava/io/File;

    .line 82
    :goto_1
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 83
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    goto :goto_0

    .line 76
    :cond_2
    iget-object v0, p0, Lcom/chartboost/sdk/Libraries/h;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    .line 77
    new-instance v1, Ljava/io/File;

    const-string v2, "__chartboost"

    invoke-direct {v1, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 78
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 79
    iput-object v0, p0, Lcom/chartboost/sdk/Libraries/h;->c:Ljava/io/File;

    goto :goto_1
.end method

.method public static declared-synchronized c()Lcom/chartboost/sdk/Libraries/h;
    .locals 4

    .prologue
    .line 339
    const-class v0, Lcom/chartboost/sdk/Libraries/h;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/chartboost/sdk/Libraries/h;->f:Lcom/chartboost/sdk/Libraries/h;

    if-nez v1, :cond_0

    .line 340
    new-instance v1, Lcom/chartboost/sdk/Libraries/h;

    const-string v2, "CBVideoCompletion"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/chartboost/sdk/Libraries/h;-><init>(Ljava/lang/String;Z)V

    sput-object v1, Lcom/chartboost/sdk/Libraries/h;->f:Lcom/chartboost/sdk/Libraries/h;

    .line 342
    :cond_0
    sget-object v1, Lcom/chartboost/sdk/Libraries/h;->f:Lcom/chartboost/sdk/Libraries/h;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 339
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private d()Z
    .locals 2

    .prologue
    .line 301
    iget-boolean v0, p0, Lcom/chartboost/sdk/Libraries/h;->e:Z

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 303
    const/4 v0, 0x1

    .line 305
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized a(Ljava/io/File;)Lcom/chartboost/sdk/Libraries/e$a;
    .locals 4

    .prologue
    .line 192
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/chartboost/sdk/Libraries/h;->d:Ljava/io/File;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/chartboost/sdk/Libraries/h;->d()Z

    move-result v0

    if-nez v0, :cond_0

    .line 193
    sget-object v0, Lcom/chartboost/sdk/Libraries/e$a;->a:Lcom/chartboost/sdk/Libraries/e$a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 203
    :goto_0
    monitor-exit p0

    return-object v0

    .line 194
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/chartboost/sdk/Libraries/h;->b:Ljava/io/File;

    if-nez v0, :cond_1

    .line 195
    sget-object v0, Lcom/chartboost/sdk/Libraries/e$a;->a:Lcom/chartboost/sdk/Libraries/e$a;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 197
    :cond_1
    const/4 v0, 0x0

    .line 199
    :try_start_2
    new-instance v1, Ljava/lang/String;

    invoke-static {p1}, Lcom/chartboost/sdk/impl/cd;->b(Ljava/io/File;)[B

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([B)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v0, v1

    .line 203
    :goto_1
    :try_start_3
    invoke-static {v0}, Lcom/chartboost/sdk/Libraries/e$a;->j(Ljava/lang/String;)Lcom/chartboost/sdk/Libraries/e$a;

    move-result-object v0

    goto :goto_0

    .line 200
    :catch_0
    move-exception v1

    .line 201
    const-string v2, "CBFileCache"

    const-string v3, "Error loading cache from disk"

    invoke-static {v2, v3, v1}, Lcom/chartboost/sdk/Libraries/CBLogging;->b(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 192
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(Ljava/lang/String;)Lcom/chartboost/sdk/Libraries/e$a;
    .locals 2

    .prologue
    .line 174
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/chartboost/sdk/Libraries/h;->d:Ljava/io/File;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/chartboost/sdk/Libraries/h;->d()Z

    move-result v0

    if-nez v0, :cond_0

    .line 175
    sget-object v0, Lcom/chartboost/sdk/Libraries/e$a;->a:Lcom/chartboost/sdk/Libraries/e$a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 183
    :goto_0
    monitor-exit p0

    return-object v0

    .line 176
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/chartboost/sdk/Libraries/h;->b:Ljava/io/File;

    if-eqz v0, :cond_1

    if-nez p1, :cond_2

    .line 177
    :cond_1
    sget-object v0, Lcom/chartboost/sdk/Libraries/e$a;->a:Lcom/chartboost/sdk/Libraries/e$a;

    goto :goto_0

    .line 179
    :cond_2
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/chartboost/sdk/Libraries/h;->b:Ljava/io/File;

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 180
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_3

    .line 181
    sget-object v0, Lcom/chartboost/sdk/Libraries/e$a;->a:Lcom/chartboost/sdk/Libraries/e$a;

    goto :goto_0

    .line 183
    :cond_3
    invoke-virtual {p0, v0}, Lcom/chartboost/sdk/Libraries/h;->a(Ljava/io/File;)Lcom/chartboost/sdk/Libraries/e$a;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_0

    .line 174
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(Ljava/io/File;Lcom/chartboost/sdk/Libraries/e$a;)Ljava/io/File;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 111
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/chartboost/sdk/Libraries/h;->d:Ljava/io/File;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/chartboost/sdk/Libraries/h;->d()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    move-object v0, v1

    .line 125
    :goto_0
    monitor-exit p0

    return-object v0

    .line 113
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/chartboost/sdk/Libraries/h;->b:Ljava/io/File;

    if-nez v0, :cond_1

    move-object v0, v1

    .line 114
    goto :goto_0

    .line 116
    :cond_1
    if-nez p1, :cond_2

    .line 117
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/chartboost/sdk/Libraries/h;->b:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 121
    :goto_1
    :try_start_2
    invoke-virtual {p2}, Lcom/chartboost/sdk/Libraries/e$a;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-static {v0, v1}, Lcom/chartboost/sdk/impl/cd;->a(Ljava/io/File;[B)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 122
    :catch_0
    move-exception v1

    .line 123
    :try_start_3
    const-string v2, "CBFileCache"

    const-string v3, "IOException attempting to write cache to disk"

    invoke-static {v2, v3, v1}, Lcom/chartboost/sdk/Libraries/CBLogging;->b(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 111
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_2
    move-object v0, p1

    goto :goto_1
.end method

.method public declared-synchronized a(Ljava/io/File;[B)V
    .locals 4

    .prologue
    .line 152
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/chartboost/sdk/Libraries/h;->d:Ljava/io/File;

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/chartboost/sdk/Libraries/h;->d()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_1

    .line 166
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 154
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/chartboost/sdk/Libraries/h;->b:Ljava/io/File;

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    .line 157
    if-nez p1, :cond_2

    .line 158
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/chartboost/sdk/Libraries/h;->b:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 162
    :goto_1
    :try_start_2
    invoke-static {v0, p2}, Lcom/chartboost/sdk/impl/cd;->a(Ljava/io/File;[B)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 163
    :catch_0
    move-exception v0

    .line 164
    :try_start_3
    const-string v1, "CBFileCache"

    const-string v2, "IOException attempting to write cache to disk"

    invoke-static {v1, v2, v0}, Lcom/chartboost/sdk/Libraries/CBLogging;->b(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 152
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_2
    move-object v0, p1

    goto :goto_1
.end method

.method public declared-synchronized a(Ljava/lang/String;Lcom/chartboost/sdk/Libraries/e$a;)V
    .locals 2

    .prologue
    .line 93
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/chartboost/sdk/Libraries/h;->d:Ljava/io/File;

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/chartboost/sdk/Libraries/h;->d()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_1

    .line 103
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 95
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/chartboost/sdk/Libraries/h;->b:Ljava/io/File;

    if-eqz v0, :cond_0

    .line 96
    const/4 v0, 0x0

    .line 97
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 98
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/chartboost/sdk/Libraries/h;->b:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    :cond_2
    invoke-virtual {p0, v0, p2}, Lcom/chartboost/sdk/Libraries/h;->a(Ljava/io/File;Lcom/chartboost/sdk/Libraries/e$a;)Ljava/io/File;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 93
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(Ljava/lang/String;[B)V
    .locals 2

    .prologue
    .line 134
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/chartboost/sdk/Libraries/h;->d:Ljava/io/File;

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/chartboost/sdk/Libraries/h;->d()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_1

    .line 144
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 136
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/chartboost/sdk/Libraries/h;->b:Ljava/io/File;

    if-eqz v0, :cond_0

    .line 137
    const/4 v0, 0x0

    .line 138
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 139
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/chartboost/sdk/Libraries/h;->b:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    :cond_2
    invoke-virtual {p0, v0, p2}, Lcom/chartboost/sdk/Libraries/h;->a(Ljava/io/File;[B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 134
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a()[Ljava/lang/String;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 242
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/chartboost/sdk/Libraries/h;->d:Ljava/io/File;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/chartboost/sdk/Libraries/h;->d()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    move-object v0, v1

    .line 246
    :goto_0
    monitor-exit p0

    return-object v0

    .line 244
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/chartboost/sdk/Libraries/h;->b:Ljava/io/File;

    if-nez v0, :cond_1

    move-object v0, v1

    .line 245
    goto :goto_0

    .line 246
    :cond_1
    iget-object v0, p0, Lcom/chartboost/sdk/Libraries/h;->b:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->list()[Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_0

    .line 242
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized b()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 272
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/chartboost/sdk/Libraries/h;->d:Ljava/io/File;

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/chartboost/sdk/Libraries/h;->d()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_1

    .line 295
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 274
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/chartboost/sdk/Libraries/h;->b:Ljava/io/File;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_0

    .line 278
    :try_start_2
    iget-object v0, p0, Lcom/chartboost/sdk/Libraries/h;->d:Ljava/io/File;

    if-eqz v0, :cond_2

    .line 279
    iget-object v0, p0, Lcom/chartboost/sdk/Libraries/h;->d:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 280
    if-eqz v0, :cond_2

    .line 281
    array-length v1, v0

    move v2, v4

    :goto_1
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    .line 282
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 281
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 285
    :cond_2
    iget-object v0, p0, Lcom/chartboost/sdk/Libraries/h;->c:Ljava/io/File;

    if-eqz v0, :cond_0

    .line 286
    iget-object v0, p0, Lcom/chartboost/sdk/Libraries/h;->c:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 287
    if-eqz v0, :cond_0

    .line 288
    array-length v1, v0

    move v2, v4

    :goto_2
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 289
    invoke-virtual {v3}, Ljava/io/File;->delete()Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 288
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 292
    :catch_0
    move-exception v0

    .line 293
    :try_start_3
    const-string v0, "CBFileCache"

    const-string v1, "Error while clearing the file cache"

    invoke-static {v0, v1}, Lcom/chartboost/sdk/Libraries/CBLogging;->b(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 272
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized b(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 264
    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 265
    invoke-virtual {p0, p1}, Lcom/chartboost/sdk/Libraries/h;->d(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/chartboost/sdk/Libraries/h;->c(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 266
    :cond_0
    monitor-exit p0

    return-void

    .line 264
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized b(Ljava/io/File;)[B
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 211
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/chartboost/sdk/Libraries/h;->d:Ljava/io/File;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/chartboost/sdk/Libraries/h;->d()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    move-object v0, v3

    .line 222
    :goto_0
    monitor-exit p0

    return-object v0

    .line 213
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/chartboost/sdk/Libraries/h;->b:Ljava/io/File;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v0, :cond_1

    move-object v0, v3

    .line 214
    goto :goto_0

    .line 218
    :cond_1
    :try_start_2
    invoke-static {p1}, Lcom/chartboost/sdk/impl/cd;->b(Ljava/io/File;)[B
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v0

    goto :goto_0

    .line 219
    :catch_0
    move-exception v0

    .line 220
    :try_start_3
    const-string v1, "CBFileCache"

    const-string v2, "Error loading cache from disk"

    invoke-static {v1, v2, v0}, Lcom/chartboost/sdk/Libraries/CBLogging;->b(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object v0, v3

    goto :goto_0

    .line 211
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized c(Ljava/io/File;)V
    .locals 1

    .prologue
    .line 255
    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 256
    invoke-virtual {p1}, Ljava/io/File;->delete()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 257
    :cond_0
    monitor-exit p0

    return-void

    .line 255
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public c(Ljava/lang/String;)Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 311
    iget-object v0, p0, Lcom/chartboost/sdk/Libraries/h;->d:Ljava/io/File;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/chartboost/sdk/Libraries/h;->d()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    .line 316
    :goto_0
    return v0

    .line 313
    :cond_0
    iget-object v0, p0, Lcom/chartboost/sdk/Libraries/h;->b:Ljava/io/File;

    if-eqz v0, :cond_1

    if-nez p1, :cond_2

    :cond_1
    move v0, v1

    .line 314
    goto :goto_0

    .line 315
    :cond_2
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/chartboost/sdk/Libraries/h;->b:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 316
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    goto :goto_0
.end method

.method public d(Ljava/lang/String;)Ljava/io/File;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 321
    iget-object v0, p0, Lcom/chartboost/sdk/Libraries/h;->d:Ljava/io/File;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/chartboost/sdk/Libraries/h;->d()Z

    move-result v0

    if-nez v0, :cond_0

    move-object v0, v1

    .line 326
    :goto_0
    return-object v0

    .line 323
    :cond_0
    iget-object v0, p0, Lcom/chartboost/sdk/Libraries/h;->b:Ljava/io/File;

    if-nez v0, :cond_1

    move-object v0, v1

    .line 324
    goto :goto_0

    .line 325
    :cond_1
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/chartboost/sdk/Libraries/h;->b:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
