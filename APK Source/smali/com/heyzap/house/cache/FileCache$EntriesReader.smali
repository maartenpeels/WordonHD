.class Lcom/heyzap/house/cache/FileCache$EntriesReader;
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
    name = "EntriesReader"
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
    .line 274
    iput-object p1, p0, Lcom/heyzap/house/cache/FileCache$EntriesReader;->this$0:Lcom/heyzap/house/cache/FileCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 275
    iput-object p2, p0, Lcom/heyzap/house/cache/FileCache$EntriesReader;->cache:Lcom/heyzap/house/cache/FileCache;

    .line 276
    iput-object p3, p0, Lcom/heyzap/house/cache/FileCache$EntriesReader;->entriesFuture:Lcom/heyzap/internal/SettableFuture;

    .line 277
    return-void
.end method

.method private read()Lorg/json/JSONArray;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 330
    .line 331
    iget-object v0, p0, Lcom/heyzap/house/cache/FileCache$EntriesReader;->cache:Lcom/heyzap/house/cache/FileCache;

    invoke-virtual {v0}, Lcom/heyzap/house/cache/FileCache;->getDirectory()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/heyzap/house/cache/FileCache$EntriesReader;->cache:Lcom/heyzap/house/cache/FileCache;

    invoke-virtual {v0}, Lcom/heyzap/house/cache/FileCache;->getDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/heyzap/house/cache/FileCache$EntriesReader;->cache:Lcom/heyzap/house/cache/FileCache;

    invoke-virtual {v0}, Lcom/heyzap/house/cache/FileCache;->getDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 333
    :cond_1
    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    iget-object v1, p0, Lcom/heyzap/house/cache/FileCache$EntriesReader;->this$0:Lcom/heyzap/house/cache/FileCache;

    # invokes: Lcom/heyzap/house/cache/FileCache;->getEntriesFile()Ljava/io/File;
    invoke-static {v1}, Lcom/heyzap/house/cache/FileCache;->access$100(Lcom/heyzap/house/cache/FileCache;)Ljava/io/File;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    .line 335
    :try_start_1
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    invoke-direct {v2, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 336
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 339
    :goto_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 340
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 347
    :catchall_0
    move-exception v1

    :try_start_2
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    throw v1
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    .line 349
    :catch_0
    move-exception v0

    move-object v0, v4

    .line 356
    :goto_1
    return-object v0

    .line 343
    :cond_2
    :try_start_3
    new-instance v1, Lorg/json/JSONObject;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 345
    sget-object v2, Lcom/heyzap/house/cache/FileCache;->ROOT_ENTRIES_ELEMENT:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v1

    .line 347
    :try_start_4
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_1

    move-object v0, v1

    .line 353
    goto :goto_1

    .line 351
    :catch_1
    move-exception v0

    move-object v0, v4

    .line 352
    goto :goto_1

    :cond_3
    move-object v0, v4

    goto :goto_1
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/4 v2, 0x0

    .line 282
    :try_start_0
    invoke-direct {p0}, Lcom/heyzap/house/cache/FileCache$EntriesReader;->read()Lorg/json/JSONArray;

    move-result-object v1

    .line 283
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_3

    .line 284
    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    if-ge v2, v0, :cond_3

    .line 285
    const/4 v3, 0x0

    .line 288
    :try_start_1
    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    move-object v4, v0

    .line 293
    :goto_1
    if-nez v4, :cond_1

    .line 284
    :cond_0
    :goto_2
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 289
    :catch_0
    move-exception v0

    .line 290
    :try_start_2
    invoke-static {v0}, Lcom/heyzap/internal/Logger;->log(Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-object v4, v9

    goto :goto_1

    .line 298
    :cond_1
    :try_start_3
    sget-object v0, Lcom/heyzap/house/cache/FileCache;->KLASS_ELEMENT:Ljava/lang/String;

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 299
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 300
    const-string v5, "fromJSONObject"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    const-class v8, Lorg/json/JSONObject;

    aput-object v8, v6, v7

    invoke-virtual {v0, v5, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 301
    const/4 v5, 0x0

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v4, v6, v7

    invoke-virtual {v0, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/heyzap/house/cache/Entry;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 311
    if-eqz v0, :cond_0

    :try_start_4
    invoke-virtual {v0}, Lcom/heyzap/house/cache/Entry;->fileExists()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Lcom/heyzap/house/cache/Entry;->isDirty()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_0

    .line 312
    iget-object v3, p0, Lcom/heyzap/house/cache/FileCache$EntriesReader;->cache:Lcom/heyzap/house/cache/FileCache;

    invoke-virtual {v3, v0}, Lcom/heyzap/house/cache/FileCache;->put(Lcom/heyzap/house/cache/Entry;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_2

    .line 323
    :catch_1
    move-exception v0

    .line 324
    invoke-static {v0}, Lcom/heyzap/internal/Logger;->trace(Ljava/lang/Throwable;)V

    .line 325
    iget-object v1, p0, Lcom/heyzap/house/cache/FileCache$EntriesReader;->entriesFuture:Lcom/heyzap/internal/SettableFuture;

    invoke-virtual {v1, v0}, Lcom/heyzap/internal/SettableFuture;->setException(Ljava/lang/Throwable;)Z

    .line 327
    :goto_3
    return-void

    .line 302
    :catch_2
    move-exception v0

    .line 303
    :try_start_5
    invoke-static {v0}, Lcom/heyzap/internal/Logger;->trace(Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 306
    :try_start_6
    invoke-static {v4}, Lcom/heyzap/house/cache/Entry;->fromJSONObject(Lorg/json/JSONObject;)Lcom/heyzap/house/cache/Entry;
    :try_end_6
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-result-object v0

    .line 311
    :goto_4
    if-eqz v0, :cond_0

    :try_start_7
    invoke-virtual {v0}, Lcom/heyzap/house/cache/Entry;->fileExists()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Lcom/heyzap/house/cache/Entry;->isDirty()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_0

    .line 312
    iget-object v3, p0, Lcom/heyzap/house/cache/FileCache$EntriesReader;->cache:Lcom/heyzap/house/cache/FileCache;

    invoke-virtual {v3, v0}, Lcom/heyzap/house/cache/FileCache;->put(Lcom/heyzap/house/cache/Entry;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_2

    .line 307
    :catch_3
    move-exception v4

    .line 308
    :try_start_8
    invoke-static {v0}, Lcom/heyzap/internal/Logger;->log(Ljava/lang/Object;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    move-object v0, v9

    goto :goto_4

    .line 311
    :catchall_0
    move-exception v0

    if-eqz v9, :cond_2

    :try_start_9
    invoke-virtual {v3}, Lcom/heyzap/house/cache/Entry;->fileExists()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v3}, Lcom/heyzap/house/cache/Entry;->isDirty()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_2

    .line 312
    iget-object v1, p0, Lcom/heyzap/house/cache/FileCache$EntriesReader;->cache:Lcom/heyzap/house/cache/FileCache;

    invoke-virtual {v1, v3}, Lcom/heyzap/house/cache/FileCache;->put(Lcom/heyzap/house/cache/Entry;)V

    :cond_2
    throw v0

    .line 318
    :cond_3
    iget-object v0, p0, Lcom/heyzap/house/cache/FileCache$EntriesReader;->cache:Lcom/heyzap/house/cache/FileCache;

    # getter for: Lcom/heyzap/house/cache/FileCache;->open:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v0}, Lcom/heyzap/house/cache/FileCache;->access$200(Lcom/heyzap/house/cache/FileCache;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 320
    iget-object v0, p0, Lcom/heyzap/house/cache/FileCache$EntriesReader;->cache:Lcom/heyzap/house/cache/FileCache;

    invoke-virtual {v0}, Lcom/heyzap/house/cache/FileCache;->sync()Lcom/heyzap/internal/SettableFuture;

    move-result-object v0

    .line 322
    iget-object v1, p0, Lcom/heyzap/house/cache/FileCache$EntriesReader;->entriesFuture:Lcom/heyzap/internal/SettableFuture;

    invoke-virtual {v0}, Lcom/heyzap/internal/SettableFuture;->get()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/heyzap/internal/SettableFuture;->set(Ljava/lang/Object;)Z
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1

    goto :goto_3
.end method
