.class public Lcom/tapjoy/TapjoyCache;
.super Ljava/lang/Object;
.source "TapjoyCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tapjoy/TapjoyCache$CacheAssetThread;
    }
.end annotation


# static fields
.field private static final CACHE_CONNECT_TIMEOUT:I = 0x3a98

.field public static final CACHE_DIRECTORY_NAME:Ljava/lang/String; = "Tapjoy/Cache/"

.field public static final CACHE_LIMIT:I = -0x1

.field private static final CACHE_READ_TIMEOUT:I = 0x7530

.field private static final DEFAULT_TIME_TO_LIVE:J = 0x15180L

.field private static final NUMBER_OF_THREDS:I = 0x5

.field private static final TAG:Ljava/lang/String; = "TapjoyCache"

.field private static _instance:Lcom/tapjoy/TapjoyCache;

.field public static unit_test_mode:Z


# instance fields
.field private _cachedAssets:Lcom/tapjoy/TapjoyCacheMap;

.field private _context:Landroid/content/Context;

.field private _currentlyDownloading:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private _eventPreloadCount:I

.field private _eventPreloadLimit:I

.field private _tajoyCacheDir:Ljava/io/File;

.field private _verboseDebugging:Z

.field private executor:Ljava/util/concurrent/ExecutorService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    const/4 v0, 0x0

    sput-boolean v0, Lcom/tapjoy/TapjoyCache;->unit_test_mode:Z

    .line 38
    const/4 v0, 0x0

    sput-object v0, Lcom/tapjoy/TapjoyCache;->_instance:Lcom/tapjoy/TapjoyCache;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "applicationContext"    # Landroid/content/Context;

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    const/4 v0, 0x0

    iput v0, p0, Lcom/tapjoy/TapjoyCache;->_eventPreloadCount:I

    .line 54
    const/4 v0, 0x3

    iput v0, p0, Lcom/tapjoy/TapjoyCache;->_eventPreloadLimit:I

    .line 60
    sget-object v0, Lcom/tapjoy/TapjoyCache;->_instance:Lcom/tapjoy/TapjoyCache;

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/tapjoy/TapjoyCache;->unit_test_mode:Z

    if-eqz v0, :cond_1

    .line 61
    :cond_0
    sput-object p0, Lcom/tapjoy/TapjoyCache;->_instance:Lcom/tapjoy/TapjoyCache;

    .line 62
    iput-object p1, p0, Lcom/tapjoy/TapjoyCache;->_context:Landroid/content/Context;

    .line 64
    new-instance v0, Lcom/tapjoy/TapjoyCacheMap;

    const/4 v1, -0x1

    invoke-direct {v0, p1, v1}, Lcom/tapjoy/TapjoyCacheMap;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/tapjoy/TapjoyCache;->_cachedAssets:Lcom/tapjoy/TapjoyCacheMap;

    .line 65
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/tapjoy/TapjoyCache;->_currentlyDownloading:Ljava/util/Vector;

    .line 67
    const/4 v0, 0x5

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/TapjoyCache;->executor:Ljava/util/concurrent/ExecutorService;

    .line 71
    invoke-direct {p0}, Lcom/tapjoy/TapjoyCache;->init()V

    .line 73
    :cond_1
    return-void
.end method

.method static synthetic access$000(Lcom/tapjoy/TapjoyCache;)Z
    .locals 1
    .param p0, "x0"    # Lcom/tapjoy/TapjoyCache;

    .prologue
    .line 32
    iget-boolean v0, p0, Lcom/tapjoy/TapjoyCache;->_verboseDebugging:Z

    return v0
.end method

.method static synthetic access$100(Lcom/tapjoy/TapjoyCache;)Ljava/util/Vector;
    .locals 1
    .param p0, "x0"    # Lcom/tapjoy/TapjoyCache;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/tapjoy/TapjoyCache;->_currentlyDownloading:Ljava/util/Vector;

    return-object v0
.end method

.method static synthetic access$200(Lcom/tapjoy/TapjoyCache;)Lcom/tapjoy/TapjoyCacheMap;
    .locals 1
    .param p0, "x0"    # Lcom/tapjoy/TapjoyCache;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/tapjoy/TapjoyCache;->_cachedAssets:Lcom/tapjoy/TapjoyCacheMap;

    return-object v0
.end method

.method static synthetic access$300(Lcom/tapjoy/TapjoyCache;)Ljava/io/File;
    .locals 1
    .param p0, "x0"    # Lcom/tapjoy/TapjoyCache;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/tapjoy/TapjoyCache;->_tajoyCacheDir:Ljava/io/File;

    return-object v0
.end method

.method private getHashFromURL(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "assetURLString"    # Ljava/lang/String;

    .prologue
    .line 269
    const-string v0, "//"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 270
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "http:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 274
    :cond_0
    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->getFile()Ljava/lang/String;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 278
    :goto_0
    return-object v0

    .line 275
    :catch_0
    move-exception v0

    .line 278
    const-string v0, ""

    goto :goto_0
.end method

.method public static getInstance()Lcom/tapjoy/TapjoyCache;
    .locals 1

    .prologue
    .line 494
    sget-object v0, Lcom/tapjoy/TapjoyCache;->_instance:Lcom/tapjoy/TapjoyCache;

    return-object v0
.end method

.method private init()V
    .locals 3

    .prologue
    .line 77
    invoke-direct {p0}, Lcom/tapjoy/TapjoyCache;->removeOldCacheDataFromDevice()V

    .line 80
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/tapjoy/TapjoyCache;->_context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Tapjoy/Cache/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/tapjoy/TapjoyCache;->_tajoyCacheDir:Ljava/io/File;

    .line 83
    iget-object v0, p0, Lcom/tapjoy/TapjoyCache;->_tajoyCacheDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 84
    iget-object v0, p0, Lcom/tapjoy/TapjoyCache;->_tajoyCacheDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 95
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/tapjoy/TapjoyCache;->loadCachedAssets()V

    .line 96
    return-void

    .line 87
    :cond_1
    const-string v0, "TapjoyCache"

    const-string v1, "Error initalizing cache"

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    const/4 v0, 0x0

    sput-object v0, Lcom/tapjoy/TapjoyCache;->_instance:Lcom/tapjoy/TapjoyCache;

    goto :goto_0
.end method

.method private loadCachedAssets()V
    .locals 11

    .prologue
    .line 104
    iget-object v8, p0, Lcom/tapjoy/TapjoyCache;->_context:Landroid/content/Context;

    const-string v9, "tapjoyCacheData"

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 105
    .local v1, "cacheMetaData":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    .line 107
    .local v5, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v2

    .line 109
    .local v2, "cacheSettings":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;*>;"
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 110
    .local v4, "cachedItem":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;*>;"
    new-instance v7, Ljava/io/File;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-direct {v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 112
    .local v7, "tempFile":Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-virtual {v7}, Ljava/io/File;->isFile()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 114
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 115
    .local v0, "assetFileJSON":Ljava/lang/String;
    invoke-static {v0}, Lcom/tapjoy/TapjoyCachedAssetData;->fromRawJSONString(Ljava/lang/String;)Lcom/tapjoy/TapjoyCachedAssetData;

    move-result-object v3

    .line 117
    .local v3, "cachedAsset":Lcom/tapjoy/TapjoyCachedAssetData;
    if-eqz v3, :cond_0

    .line 119
    iget-object v8, p0, Lcom/tapjoy/TapjoyCache;->_cachedAssets:Lcom/tapjoy/TapjoyCacheMap;

    invoke-virtual {v3}, Lcom/tapjoy/TapjoyCachedAssetData;->getAssetURL()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9, v3}, Lcom/tapjoy/TapjoyCacheMap;->put(Ljava/lang/String;Lcom/tapjoy/TapjoyCachedAssetData;)Lcom/tapjoy/TapjoyCachedAssetData;

    goto :goto_0

    .line 122
    :cond_0
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-interface {v5, v8}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    invoke-interface {v8}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0

    .line 127
    .end local v0    # "assetFileJSON":Ljava/lang/String;
    .end local v3    # "cachedAsset":Lcom/tapjoy/TapjoyCachedAssetData;
    :cond_1
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-interface {v5, v8}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    invoke-interface {v8}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0

    .line 130
    .end local v4    # "cachedItem":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;*>;"
    .end local v7    # "tempFile":Ljava/io/File;
    :cond_2
    return-void
.end method

.method private removeOldCacheDataFromDevice()V
    .locals 3

    .prologue
    .line 137
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 140
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    const-string v2, "tapjoy"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/tapjoy/TapjoyUtil;->deleteFileOrDirectory(Ljava/io/File;)V

    .line 143
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    const-string v2, "tjcache/tmp/"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/tapjoy/TapjoyUtil;->deleteFileOrDirectory(Ljava/io/File;)V

    .line 145
    :cond_0
    return-void
.end method

.method public static setInstance(Lcom/tapjoy/TapjoyCache;)V
    .locals 0
    .param p0, "cache"    # Lcom/tapjoy/TapjoyCache;

    .prologue
    .line 503
    sput-object p0, Lcom/tapjoy/TapjoyCache;->_instance:Lcom/tapjoy/TapjoyCache;

    .line 504
    return-void
.end method


# virtual methods
.method public cacheAssetFromJSONObject(Lorg/json/JSONObject;)Ljava/util/concurrent/Future;
    .locals 6
    .param p1, "assetData"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/concurrent/Future",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 220
    :try_start_0
    const-string v4, "url"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 223
    .local v2, "assetURL":Ljava/lang/String;
    const-string v0, ""

    .line 224
    .local v0, "assetOfferId":Ljava/lang/String;
    const-wide/32 v4, 0x15180

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 226
    .local v1, "assetTimeToLive":Ljava/lang/Long;
    const-string v4, "offerId"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 227
    const-string v4, "timeToLive"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 229
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {p0, v2, v0, v4, v5}, Lcom/tapjoy/TapjoyCache;->cacheAssetFromURL(Ljava/lang/String;Ljava/lang/String;J)Ljava/util/concurrent/Future;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 232
    .end local v0    # "assetOfferId":Ljava/lang/String;
    .end local v1    # "assetTimeToLive":Ljava/lang/Long;
    .end local v2    # "assetURL":Ljava/lang/String;
    :goto_0
    return-object v4

    .line 230
    :catch_0
    move-exception v4

    move-object v3, v4

    .line 232
    .local v3, "e":Lorg/json/JSONException;
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public cacheAssetFromURL(Ljava/lang/String;Ljava/lang/String;J)Ljava/util/concurrent/Future;
    .locals 5
    .param p1, "assetURLString"    # Ljava/lang/String;
    .param p2, "offerId"    # Ljava/lang/String;
    .param p3, "timeToLive"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "J)",
            "Ljava/util/concurrent/Future",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 249
    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 255
    .local v0, "assetURL":Ljava/net/URL;
    invoke-virtual {v0}, Ljava/net/URL;->getFile()Ljava/lang/String;

    move-result-object v2

    .line 256
    .local v2, "urlHash":Ljava/lang/String;
    iget-object v3, p0, Lcom/tapjoy/TapjoyCache;->_currentlyDownloading:Ljava/util/Vector;

    invoke-virtual {v3, v2}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v3, v4

    .line 261
    .end local v0    # "assetURL":Ljava/net/URL;
    .end local v2    # "urlHash":Ljava/lang/String;
    :goto_0
    return-object v3

    .line 250
    :catch_0
    move-exception v3

    move-object v1, v3

    .local v1, "e":Ljava/net/MalformedURLException;
    move-object v3, v4

    .line 252
    goto :goto_0

    .line 261
    .end local v1    # "e":Ljava/net/MalformedURLException;
    .restart local v0    # "assetURL":Ljava/net/URL;
    .restart local v2    # "urlHash":Ljava/lang/String;
    :cond_0
    invoke-virtual {p0, v0, p2, p3, p4}, Lcom/tapjoy/TapjoyCache;->startCachingThread(Ljava/net/URL;Ljava/lang/String;J)Ljava/util/concurrent/Future;

    move-result-object v3

    goto :goto_0
.end method

.method public cacheAssetGroup(Lorg/json/JSONArray;Lcom/tapjoy/TapjoyCacheNotifier;)V
    .locals 1
    .param p1, "assetGroup"    # Lorg/json/JSONArray;
    .param p2, "tapjoyCacheNotifier"    # Lcom/tapjoy/TapjoyCacheNotifier;

    .prologue
    .line 154
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 156
    new-instance v0, Lcom/tapjoy/TapjoyCache$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/tapjoy/TapjoyCache$1;-><init>(Lcom/tapjoy/TapjoyCache;Lorg/json/JSONArray;Lcom/tapjoy/TapjoyCacheNotifier;)V

    invoke-virtual {v0}, Lcom/tapjoy/TapjoyCache$1;->start()V

    .line 209
    :cond_0
    :goto_0
    return-void

    .line 205
    :cond_1
    if-eqz p2, :cond_0

    .line 206
    const/4 v0, 0x1

    invoke-interface {p2, v0}, Lcom/tapjoy/TapjoyCacheNotifier;->cachingComplete(I)V

    goto :goto_0
.end method

.method public cachedAssetsToJSON()Ljava/lang/String;
    .locals 6

    .prologue
    .line 389
    iget-object v4, p0, Lcom/tapjoy/TapjoyCache;->_cachedAssets:Lcom/tapjoy/TapjoyCacheMap;

    invoke-virtual {v4}, Lcom/tapjoy/TapjoyCacheMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 391
    .local v3, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/tapjoy/TapjoyCachedAssetData;>;>;"
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 393
    .end local p0    # "this":Lcom/tapjoy/TapjoyCache;
    .local v0, "data":Lorg/json/JSONObject;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 394
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 396
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/tapjoy/TapjoyCachedAssetData;>;"
    :try_start_0
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/tapjoy/TapjoyCachedAssetData;

    invoke-virtual {p0}, Lcom/tapjoy/TapjoyCachedAssetData;->toRawJSONString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 397
    :catch_0
    move-exception v4

    move-object v1, v4

    .line 398
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 401
    .end local v1    # "e":Lorg/json/JSONException;
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/tapjoy/TapjoyCachedAssetData;>;"
    :cond_0
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public clearTapjoyCache()V
    .locals 3

    .prologue
    .line 299
    iget-object v0, p0, Lcom/tapjoy/TapjoyCache;->_tajoyCacheDir:Ljava/io/File;

    invoke-static {v0}, Lcom/tapjoy/TapjoyUtil;->deleteFileOrDirectory(Ljava/io/File;)V

    .line 301
    iget-object v0, p0, Lcom/tapjoy/TapjoyCache;->_tajoyCacheDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 305
    :cond_0
    new-instance v0, Lcom/tapjoy/TapjoyCacheMap;

    iget-object v1, p0, Lcom/tapjoy/TapjoyCache;->_context:Landroid/content/Context;

    const/4 v2, -0x1

    invoke-direct {v0, v1, v2}, Lcom/tapjoy/TapjoyCacheMap;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/tapjoy/TapjoyCache;->_cachedAssets:Lcom/tapjoy/TapjoyCacheMap;

    .line 306
    return-void
.end method

.method public decrementEventCacheCount()V
    .locals 2

    .prologue
    .line 465
    iget v0, p0, Lcom/tapjoy/TapjoyCache;->_eventPreloadCount:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/tapjoy/TapjoyCache;->_eventPreloadCount:I

    .line 466
    iget v0, p0, Lcom/tapjoy/TapjoyCache;->_eventPreloadCount:I

    if-gez v0, :cond_0

    .line 467
    const/4 v0, 0x0

    iput v0, p0, Lcom/tapjoy/TapjoyCache;->_eventPreloadCount:I

    .line 469
    :cond_0
    invoke-virtual {p0}, Lcom/tapjoy/TapjoyCache;->printEventCacheInformation()V

    .line 470
    return-void
.end method

.method public getCachedData()Lcom/tapjoy/TapjoyCacheMap;
    .locals 1

    .prologue
    .line 358
    iget-object v0, p0, Lcom/tapjoy/TapjoyCache;->_cachedAssets:Lcom/tapjoy/TapjoyCacheMap;

    return-object v0
.end method

.method public getCachedDataForURL(Ljava/lang/String;)Lcom/tapjoy/TapjoyCachedAssetData;
    .locals 2
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 345
    invoke-direct {p0, p1}, Lcom/tapjoy/TapjoyCache;->getHashFromURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 346
    .local v0, "urlHash":Ljava/lang/String;
    const-string v1, ""

    if-eq v0, v1, :cond_0

    .line 347
    iget-object v1, p0, Lcom/tapjoy/TapjoyCache;->_cachedAssets:Lcom/tapjoy/TapjoyCacheMap;

    invoke-virtual {v1, v0}, Lcom/tapjoy/TapjoyCacheMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "this":Lcom/tapjoy/TapjoyCache;
    check-cast p0, Lcom/tapjoy/TapjoyCachedAssetData;

    move-object v1, p0

    .line 349
    :goto_0
    return-object v1

    .restart local p0    # "this":Lcom/tapjoy/TapjoyCache;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getCachedOfferIDs()Ljava/lang/String;
    .locals 6

    .prologue
    .line 409
    const-string v2, ""

    .line 411
    .local v2, "params":Ljava/lang/String;
    iget-object v3, p0, Lcom/tapjoy/TapjoyCache;->_cachedAssets:Lcom/tapjoy/TapjoyCacheMap;

    if-eqz v3, :cond_2

    .line 412
    iget-object v3, p0, Lcom/tapjoy/TapjoyCache;->_cachedAssets:Lcom/tapjoy/TapjoyCacheMap;

    invoke-virtual {v3}, Lcom/tapjoy/TapjoyCacheMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 414
    .end local p0    # "this":Lcom/tapjoy/TapjoyCache;
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/tapjoy/TapjoyCachedAssetData;>;>;"
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 415
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 416
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/tapjoy/TapjoyCachedAssetData;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/tapjoy/TapjoyCachedAssetData;

    invoke-virtual {p0}, Lcom/tapjoy/TapjoyCachedAssetData;->getOfferId()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/tapjoy/TapjoyCachedAssetData;

    invoke-virtual {p0}, Lcom/tapjoy/TapjoyCachedAssetData;->getOfferId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_0

    .line 417
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/tapjoy/TapjoyCachedAssetData;

    invoke-virtual {p0}, Lcom/tapjoy/TapjoyCachedAssetData;->getOfferId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 420
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/tapjoy/TapjoyCachedAssetData;>;"
    :cond_1
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_2

    .line 421
    const/4 v3, 0x0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 425
    .end local v1    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/tapjoy/TapjoyCachedAssetData;>;>;"
    :cond_2
    return-object v2
.end method

.method public getEventPreloadCount()I
    .locals 1

    .prologue
    .line 446
    iget v0, p0, Lcom/tapjoy/TapjoyCache;->_eventPreloadCount:I

    return v0
.end method

.method public getEventPreloadLimit()I
    .locals 1

    .prologue
    .line 439
    iget v0, p0, Lcom/tapjoy/TapjoyCache;->_eventPreloadLimit:I

    return v0
.end method

.method public getPathOfCachedURL(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 367
    invoke-direct {p0, p1}, Lcom/tapjoy/TapjoyCache;->getHashFromURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 369
    .local v2, "urlHash":Ljava/lang/String;
    const-string v3, ""

    if-eq v2, v3, :cond_0

    iget-object v3, p0, Lcom/tapjoy/TapjoyCache;->_cachedAssets:Lcom/tapjoy/TapjoyCacheMap;

    invoke-virtual {v3, v2}, Lcom/tapjoy/TapjoyCacheMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 371
    iget-object v3, p0, Lcom/tapjoy/TapjoyCache;->_cachedAssets:Lcom/tapjoy/TapjoyCacheMap;

    invoke-virtual {v3, v2}, Lcom/tapjoy/TapjoyCacheMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tapjoy/TapjoyCachedAssetData;

    .line 372
    .local v0, "cachedAsset":Lcom/tapjoy/TapjoyCachedAssetData;
    new-instance v1, Ljava/io/File;

    invoke-virtual {v0}, Lcom/tapjoy/TapjoyCachedAssetData;->getLocalFilePath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 373
    .local v1, "cachedFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 374
    invoke-virtual {v0}, Lcom/tapjoy/TapjoyCachedAssetData;->getLocalURL()Ljava/lang/String;

    move-result-object p1

    .line 380
    .end local v0    # "cachedAsset":Lcom/tapjoy/TapjoyCachedAssetData;
    .end local v1    # "cachedFile":Ljava/io/File;
    :cond_0
    :goto_0
    return-object p1

    .line 376
    .restart local v0    # "cachedAsset":Lcom/tapjoy/TapjoyCachedAssetData;
    .restart local v1    # "cachedFile":Ljava/io/File;
    :cond_1
    invoke-static {}, Lcom/tapjoy/TapjoyCache;->getInstance()Lcom/tapjoy/TapjoyCache;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/tapjoy/TapjoyCache;->removeAssetFromCache(Ljava/lang/String;)Z

    goto :goto_0
.end method

.method public incrementEventCacheCount()V
    .locals 2

    .prologue
    .line 453
    iget v0, p0, Lcom/tapjoy/TapjoyCache;->_eventPreloadCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/tapjoy/TapjoyCache;->_eventPreloadCount:I

    .line 454
    iget v0, p0, Lcom/tapjoy/TapjoyCache;->_eventPreloadCount:I

    iget v1, p0, Lcom/tapjoy/TapjoyCache;->_eventPreloadLimit:I

    if-le v0, v1, :cond_0

    .line 456
    iget v0, p0, Lcom/tapjoy/TapjoyCache;->_eventPreloadLimit:I

    iput v0, p0, Lcom/tapjoy/TapjoyCache;->_eventPreloadCount:I

    .line 458
    :cond_0
    invoke-virtual {p0}, Lcom/tapjoy/TapjoyCache;->printEventCacheInformation()V

    .line 459
    return-void
.end method

.method public isURLCached(Ljava/lang/String;)Z
    .locals 1
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 336
    iget-object v0, p0, Lcom/tapjoy/TapjoyCache;->_cachedAssets:Lcom/tapjoy/TapjoyCacheMap;

    invoke-virtual {v0, p1}, Lcom/tapjoy/TapjoyCacheMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isURLDownloading(Ljava/lang/String;)Z
    .locals 3
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 323
    iget-object v1, p0, Lcom/tapjoy/TapjoyCache;->_currentlyDownloading:Ljava/util/Vector;

    if-eqz v1, :cond_1

    .line 324
    invoke-direct {p0, p1}, Lcom/tapjoy/TapjoyCache;->getHashFromURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 325
    .local v0, "urlHash":Ljava/lang/String;
    const-string v1, ""

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lcom/tapjoy/TapjoyCache;->_currentlyDownloading:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    .line 327
    .end local v0    # "urlHash":Ljava/lang/String;
    :goto_0
    return v1

    .restart local v0    # "urlHash":Ljava/lang/String;
    :cond_0
    move v1, v2

    .line 325
    goto :goto_0

    .end local v0    # "urlHash":Ljava/lang/String;
    :cond_1
    move v1, v2

    .line 327
    goto :goto_0
.end method

.method public printCacheInformation()V
    .locals 4

    .prologue
    const-string v3, "TapjoyCache"

    .line 483
    const-string v0, "TapjoyCache"

    const-string v0, "------------- Cache Data -------------"

    invoke-static {v3, v0}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 484
    const-string v0, "TapjoyCache"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Number of files in cache: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tapjoy/TapjoyCache;->_cachedAssets:Lcom/tapjoy/TapjoyCacheMap;

    invoke-virtual {v1}, Lcom/tapjoy/TapjoyCacheMap;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 485
    const-string v0, "TapjoyCache"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cache Size: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tapjoy/TapjoyCache;->_tajoyCacheDir:Ljava/io/File;

    invoke-static {v1}, Lcom/tapjoy/TapjoyUtil;->fileOrDirectorySize(Ljava/io/File;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 486
    const-string v0, "TapjoyCache"

    const-string v0, "--------------------------------------"

    invoke-static {v3, v0}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 487
    return-void
.end method

.method public printEventCacheInformation()V
    .locals 0

    .prologue
    .line 477
    return-void
.end method

.method public removeAssetFromCache(Ljava/lang/String;)Z
    .locals 2
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 313
    invoke-direct {p0, p1}, Lcom/tapjoy/TapjoyCache;->getHashFromURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 314
    .local v0, "urlHash":Ljava/lang/String;
    const-string v1, ""

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lcom/tapjoy/TapjoyCache;->_cachedAssets:Lcom/tapjoy/TapjoyCacheMap;

    invoke-virtual {v1, v0}, Lcom/tapjoy/TapjoyCacheMap;->remove(Ljava/lang/Object;)Lcom/tapjoy/TapjoyCachedAssetData;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setEventPreloadLimit(I)V
    .locals 0
    .param p1, "limit"    # I

    .prologue
    .line 432
    iput p1, p0, Lcom/tapjoy/TapjoyCache;->_eventPreloadLimit:I

    .line 433
    return-void
.end method

.method public startCachingThread(Ljava/net/URL;Ljava/lang/String;J)Ljava/util/concurrent/Future;
    .locals 7
    .param p1, "assetURL"    # Ljava/net/URL;
    .param p2, "offerId"    # Ljava/lang/String;
    .param p3, "timeToLive"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URL;",
            "Ljava/lang/String;",
            "J)",
            "Ljava/util/concurrent/Future",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 286
    if-eqz p1, :cond_0

    .line 287
    iget-object v6, p0, Lcom/tapjoy/TapjoyCache;->executor:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lcom/tapjoy/TapjoyCache$CacheAssetThread;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/tapjoy/TapjoyCache$CacheAssetThread;-><init>(Lcom/tapjoy/TapjoyCache;Ljava/net/URL;Ljava/lang/String;J)V

    invoke-interface {v6, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    .line 289
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
