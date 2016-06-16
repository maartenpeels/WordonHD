.class public Lcom/heyzap/house/handler/NativeFetchHandler;
.super Lcom/heyzap/house/abstr/AbstractFetchHandler;
.source "NativeFetchHandler.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/heyzap/house/request/FetchRequest;)V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0, p1, p2}, Lcom/heyzap/house/abstr/AbstractFetchHandler;-><init>(Landroid/content/Context;Lcom/heyzap/house/request/FetchRequest;)V

    .line 25
    return-void
.end method


# virtual methods
.method public onFetchSuccess(Lorg/json/JSONObject;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/heyzap/house/model/AdModel;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const-string v1, "ads"

    const-string v0, "promoted_game_package"

    .line 29
    const-string v0, "ads"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 30
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "no ads"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 33
    :cond_0
    const-string v0, "ads"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 37
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 39
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move v4, v3

    .line 41
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v3, v5, :cond_4

    .line 44
    :try_start_0
    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    .line 46
    const-string v6, "promoted_game_package"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    const-string v6, "promoted_game_package"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    const-string v6, "promoted_game_package"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 49
    :cond_1
    new-instance v5, Ljava/lang/Exception;

    const-string v6, "no promoted_game_package"

    invoke-direct {v5, v6}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_0
    .catch Lcom/heyzap/house/abstr/AbstractFetchHandler$AlreadyInstalledException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 66
    :catch_0
    move-exception v5

    .line 67
    invoke-virtual {v5}, Lcom/heyzap/house/abstr/AbstractFetchHandler$AlreadyInstalledException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 41
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 53
    :cond_2
    :try_start_1
    const-string v6, "promoted_game_package"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 55
    invoke-virtual {p0}, Lcom/heyzap/house/handler/NativeFetchHandler;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/heyzap/internal/Utils;->packageIsInstalled(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 56
    new-instance v5, Lcom/heyzap/house/abstr/AbstractFetchHandler$AlreadyInstalledException;

    const-string v6, "impression_id"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, p0, v6}, Lcom/heyzap/house/abstr/AbstractFetchHandler$AlreadyInstalledException;-><init>(Lcom/heyzap/house/abstr/AbstractFetchHandler;Ljava/lang/String;)V

    throw v5
    :try_end_1
    .catch Lcom/heyzap/house/abstr/AbstractFetchHandler$AlreadyInstalledException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 68
    :catch_1
    move-exception v5

    .line 69
    invoke-static {v5}, Lcom/heyzap/internal/Logger;->trace(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 59
    :cond_3
    :try_start_2
    new-instance v6, Lcom/heyzap/house/model/NativeModel;

    invoke-direct {v6, v5}, Lcom/heyzap/house/model/NativeModel;-><init>(Lorg/json/JSONObject;)V

    .line 60
    invoke-virtual {p0}, Lcom/heyzap/house/handler/NativeFetchHandler;->getFetchRequest()Lcom/heyzap/house/request/FetchRequest;

    move-result-object v5

    invoke-virtual {v5}, Lcom/heyzap/house/request/FetchRequest;->getTag()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Lcom/heyzap/house/model/NativeModel;->setTag(Ljava/lang/String;)V

    .line 61
    invoke-virtual {p0}, Lcom/heyzap/house/handler/NativeFetchHandler;->getContext()Landroid/content/Context;

    move-result-object v5

    const/4 v7, 0x0

    invoke-virtual {v6, v5, v7}, Lcom/heyzap/house/model/NativeModel;->doPostFetchActions(Landroid/content/Context;Lcom/heyzap/house/model/AdModel$ModelPostFetchCompleteListener;)V

    .line 62
    sget-object v5, Lcom/heyzap/internal/Constants$AdUnit;->NATIVE:Lcom/heyzap/internal/Constants$AdUnit;

    invoke-virtual {v6, v5}, Lcom/heyzap/house/model/NativeModel;->setAdUnit(Lcom/heyzap/internal/Constants$AdUnit;)V

    .line 63
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Lcom/heyzap/house/abstr/AbstractFetchHandler$AlreadyInstalledException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 65
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 73
    :cond_4
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_5

    .line 74
    invoke-static {}, Lcom/heyzap/house/handler/AttributionHandler;->getInstance()Lcom/heyzap/house/handler/AttributionHandler;

    move-result-object v0

    invoke-virtual {p0}, Lcom/heyzap/house/handler/NativeFetchHandler;->getContext()Landroid/content/Context;

    move-result-object v3

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v0, v3, v2, v5}, Lcom/heyzap/house/handler/AttributionHandler;->didInstall(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/Boolean;)V

    .line 77
    :cond_5
    if-nez v4, :cond_6

    new-instance v0, Ljava/lang/Exception;

    const-string v1, "no_fill"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 79
    :cond_6
    return-object v1
.end method
