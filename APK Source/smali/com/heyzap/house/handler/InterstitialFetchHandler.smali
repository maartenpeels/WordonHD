.class public Lcom/heyzap/house/handler/InterstitialFetchHandler;
.super Lcom/heyzap/house/abstr/AbstractFetchHandler;
.source "InterstitialFetchHandler.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/heyzap/house/request/FetchRequest;)V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0, p1, p2}, Lcom/heyzap/house/abstr/AbstractFetchHandler;-><init>(Landroid/content/Context;Lcom/heyzap/house/request/FetchRequest;)V

    .line 25
    return-void
.end method

.method static synthetic access$000(Lcom/heyzap/house/handler/InterstitialFetchHandler;Ljava/lang/Throwable;)V
    .locals 0

    .prologue
    .line 20
    invoke-virtual {p0, p1}, Lcom/heyzap/house/handler/InterstitialFetchHandler;->onFailure(Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic access$100(Lcom/heyzap/house/handler/InterstitialFetchHandler;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 20
    invoke-virtual {p0, p1}, Lcom/heyzap/house/handler/InterstitialFetchHandler;->onSuccess(Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public onFetchSuccess(Lorg/json/JSONObject;)Ljava/util/List;
    .locals 4
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
    const-string v3, "impression_id"

    const-string v2, "promoted_game_package"

    .line 29
    const-string v0, "impression_id"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "impression_id"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 31
    :cond_0
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "no_fill"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 34
    :cond_1
    const-string v0, "promoted_game_package"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "promoted_game_package"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "promoted_game_package"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 37
    :cond_2
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "no promoted_game_package"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 41
    :cond_3
    const-string v0, "promoted_game_package"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 43
    invoke-virtual {p0}, Lcom/heyzap/house/handler/InterstitialFetchHandler;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/heyzap/internal/Utils;->packageIsInstalled(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 44
    new-instance v0, Lcom/heyzap/house/abstr/AbstractFetchHandler$AlreadyInstalledException;

    const-string v1, "impression_id"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/heyzap/house/abstr/AbstractFetchHandler$AlreadyInstalledException;-><init>(Lcom/heyzap/house/abstr/AbstractFetchHandler;Ljava/lang/String;)V

    throw v0

    .line 47
    :cond_4
    const-string v0, "creative_type"

    sget-object v1, Lcom/heyzap/house/model/InterstitialModel;->FORMAT:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 51
    sget-object v1, Lcom/heyzap/house/model/VideoModel;->FORMAT:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 52
    new-instance v0, Lcom/heyzap/house/model/VideoModel;

    invoke-direct {v0, p1}, Lcom/heyzap/house/model/VideoModel;-><init>(Lorg/json/JSONObject;)V

    .line 58
    :goto_0
    invoke-virtual {p0}, Lcom/heyzap/house/handler/InterstitialFetchHandler;->getFetchRequest()Lcom/heyzap/house/request/FetchRequest;

    move-result-object v1

    invoke-virtual {v1}, Lcom/heyzap/house/request/FetchRequest;->getTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/heyzap/house/model/AdModel;->setTag(Ljava/lang/String;)V

    .line 59
    invoke-virtual {p0}, Lcom/heyzap/house/handler/InterstitialFetchHandler;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/heyzap/house/handler/InterstitialFetchHandler$1;

    invoke-direct {v2, p0}, Lcom/heyzap/house/handler/InterstitialFetchHandler$1;-><init>(Lcom/heyzap/house/handler/InterstitialFetchHandler;)V

    invoke-virtual {v0, v1, v2}, Lcom/heyzap/house/model/AdModel;->doPostFetchActions(Landroid/content/Context;Lcom/heyzap/house/model/AdModel$ModelPostFetchCompleteListener;)V

    .line 80
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 81
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 83
    return-object v1

    .line 54
    :cond_5
    new-instance v0, Lcom/heyzap/house/model/InterstitialModel;

    invoke-direct {v0, p1}, Lcom/heyzap/house/model/InterstitialModel;-><init>(Lorg/json/JSONObject;)V

    goto :goto_0
.end method

.method public shouldFireCallbackOnSuccess(Ljava/util/List;)Ljava/lang/Boolean;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/heyzap/house/model/AdModel;",
            ">;)",
            "Ljava/lang/Boolean;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 88
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v0, v2, :cond_1

    .line 89
    :cond_0
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 98
    :goto_0
    return-object v0

    .line 91
    :cond_1
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/heyzap/house/model/AdModel;

    .line 92
    invoke-virtual {p0}, Lcom/heyzap/house/model/AdModel;->showOnlyAfterContentLoaded()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 93
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    .line 95
    :cond_2
    invoke-virtual {p0}, Lcom/heyzap/house/model/AdModel;->shouldRefetchIfNotReady()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 96
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    .line 98
    :cond_3
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0
.end method
