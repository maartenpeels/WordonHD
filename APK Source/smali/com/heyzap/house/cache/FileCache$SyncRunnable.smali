.class Lcom/heyzap/house/cache/FileCache$SyncRunnable;
.super Ljava/lang/Object;
.source "FileCache.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/heyzap/house/cache/FileCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SyncRunnable"
.end annotation


# instance fields
.field cache:Lcom/heyzap/house/cache/FileCache;

.field entriesFuture:Lcom/heyzap/internal/SettableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/heyzap/internal/SettableFuture",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/heyzap/house/cache/FileCache;


# direct methods
.method public constructor <init>(Lcom/heyzap/house/cache/FileCache;Lcom/heyzap/house/cache/FileCache;Lcom/heyzap/internal/SettableFuture;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/heyzap/house/cache/FileCache;",
            "Lcom/heyzap/internal/SettableFuture",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 194
    iput-object p1, p0, Lcom/heyzap/house/cache/FileCache$SyncRunnable;->this$0:Lcom/heyzap/house/cache/FileCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 195
    iput-object p2, p0, Lcom/heyzap/house/cache/FileCache$SyncRunnable;->cache:Lcom/heyzap/house/cache/FileCache;

    .line 196
    iput-object p3, p0, Lcom/heyzap/house/cache/FileCache$SyncRunnable;->entriesFuture:Lcom/heyzap/internal/SettableFuture;

    .line 197
    return-void
.end method

.method private clean()V
    .locals 6

    .prologue
    .line 249
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 250
    iget-object v0, p0, Lcom/heyzap/house/cache/FileCache$SyncRunnable;->cache:Lcom/heyzap/house/cache/FileCache;

    invoke-virtual {v0}, Lcom/heyzap/house/cache/FileCache;->all()Ljava/util/ArrayList;

    move-result-object v0

    .line 251
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/heyzap/house/cache/Entry;

    .line 252
    invoke-virtual {v0}, Lcom/heyzap/house/cache/Entry;->getFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 256
    :cond_0
    iget-object v0, p0, Lcom/heyzap/house/cache/FileCache$SyncRunnable;->cache:Lcom/heyzap/house/cache/FileCache;

    # invokes: Lcom/heyzap/house/cache/FileCache;->getEntriesFile()Ljava/io/File;
    invoke-static {v0}, Lcom/heyzap/house/cache/FileCache;->access$100(Lcom/heyzap/house/cache/FileCache;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 259
    iget-object v0, p0, Lcom/heyzap/house/cache/FileCache$SyncRunnable;->cache:Lcom/heyzap/house/cache/FileCache;

    invoke-virtual {v0}, Lcom/heyzap/house/cache/FileCache;->getDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 260
    array-length v2, v0

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v2, :cond_2

    aget-object v4, v0, v3

    .line 261
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    .line 262
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 263
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 260
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 266
    :cond_2
    return-void
.end method

.method private writeEntriesFile()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 220
    .line 222
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 223
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 225
    iget-object v0, p0, Lcom/heyzap/house/cache/FileCache$SyncRunnable;->this$0:Lcom/heyzap/house/cache/FileCache;

    # getter for: Lcom/heyzap/house/cache/FileCache;->entries:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static {v0}, Lcom/heyzap/house/cache/FileCache;->access$000(Lcom/heyzap/house/cache/FileCache;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/heyzap/house/cache/Entry;

    .line 227
    invoke-virtual {v0}, Lcom/heyzap/house/cache/Entry;->isDirty()Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_0

    .line 229
    :try_start_0
    invoke-virtual {v0}, Lcom/heyzap/house/cache/Entry;->asJSONObject()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 230
    :catch_0
    move-exception v0

    .line 231
    invoke-static {v0}, Lcom/heyzap/internal/Logger;->trace(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 237
    :cond_1
    sget-object v0, Lcom/heyzap/house/cache/FileCache;->ROOT_ENTRIES_ELEMENT:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 238
    sget-object v0, Lcom/heyzap/house/cache/FileCache;->ROOT_VERSION_ELEMENT:Ljava/lang/String;

    sget-object v2, Lcom/heyzap/house/cache/FileCache;->VERSION_UID:Ljava/lang/Long;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 240
    new-instance v0, Ljava/io/FileWriter;

    iget-object v2, p0, Lcom/heyzap/house/cache/FileCache$SyncRunnable;->cache:Lcom/heyzap/house/cache/FileCache;

    # invokes: Lcom/heyzap/house/cache/FileCache;->getEntriesFile()Ljava/io/File;
    invoke-static {v2}, Lcom/heyzap/house/cache/FileCache;->access$100(Lcom/heyzap/house/cache/FileCache;)Ljava/io/File;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    .line 241
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 242
    invoke-virtual {v0}, Ljava/io/FileWriter;->flush()V

    .line 243
    invoke-virtual {v0}, Ljava/io/FileWriter;->close()V

    .line 244
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 202
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 203
    invoke-direct {p0}, Lcom/heyzap/house/cache/FileCache$SyncRunnable;->writeEntriesFile()V

    .line 204
    invoke-direct {p0}, Lcom/heyzap/house/cache/FileCache$SyncRunnable;->clean()V

    .line 206
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    sub-long v0, v1, v3

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 208
    const-string v1, "(CACHE) Sync took %dms"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Lcom/heyzap/internal/Logger;->format(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 210
    iget-object v0, p0, Lcom/heyzap/house/cache/FileCache$SyncRunnable;->entriesFuture:Lcom/heyzap/internal/SettableFuture;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/heyzap/internal/SettableFuture;->set(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 217
    :goto_0
    return-void

    .line 211
    :catch_0
    move-exception v0

    .line 212
    :try_start_1
    invoke-static {v0}, Lcom/heyzap/internal/Logger;->trace(Ljava/lang/Throwable;)V

    .line 213
    iget-object v1, p0, Lcom/heyzap/house/cache/FileCache$SyncRunnable;->entriesFuture:Lcom/heyzap/internal/SettableFuture;

    invoke-virtual {v1, v0}, Lcom/heyzap/internal/SettableFuture;->setException(Ljava/lang/Throwable;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 214
    :catchall_0
    move-exception v0

    throw v0
.end method
