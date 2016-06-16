.class public Lcom/heyzap/house/handler/AttributionHandler;
.super Ljava/lang/Object;
.source "AttributionHandler.java"


# static fields
.field private static volatile ref:Lcom/heyzap/house/handler/AttributionHandler;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/heyzap/house/handler/AttributionHandler;
    .locals 2

    .prologue
    .line 150
    const-class v0, Lcom/heyzap/house/handler/AttributionHandler;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/heyzap/house/handler/AttributionHandler;->ref:Lcom/heyzap/house/handler/AttributionHandler;

    if-nez v1, :cond_0

    .line 151
    new-instance v1, Lcom/heyzap/house/handler/AttributionHandler;

    invoke-direct {v1}, Lcom/heyzap/house/handler/AttributionHandler;-><init>()V

    sput-object v1, Lcom/heyzap/house/handler/AttributionHandler;->ref:Lcom/heyzap/house/handler/AttributionHandler;

    .line 154
    :cond_0
    sget-object v1, Lcom/heyzap/house/handler/AttributionHandler;->ref:Lcom/heyzap/house/handler/AttributionHandler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 150
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 158
    const/4 v0, 0x0

    return-object v0
.end method

.method public didImpression(Landroid/content/Context;Lcom/heyzap/house/model/AdModel;)V
    .locals 3

    .prologue
    .line 26
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "impression."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Lcom/heyzap/house/model/AdModel;->getGamePackage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 29
    const-string v1, "com.heyzap.sdk.ads"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 30
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 31
    invoke-virtual {p2}, Lcom/heyzap/house/model/AdModel;->getImpressionId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 33
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 39
    :goto_0
    return-void

    .line 35
    :catch_0
    move-exception v0

    .line 36
    invoke-static {v0}, Lcom/heyzap/internal/Logger;->trace(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public didInstall(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 91
    if-nez p1, :cond_1

    .line 112
    :cond_0
    :goto_0
    return-void

    .line 92
    :cond_1
    if-eqz p2, :cond_0

    .line 95
    :try_start_0
    const-string v0, "impression.%s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 96
    const-string v1, "com.heyzap.sdk.ads"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 97
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 99
    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 100
    if-eqz v0, :cond_0

    .line 104
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 105
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 107
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, p1, v1, v0}, Lcom/heyzap/house/handler/AttributionHandler;->didInstall(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/Boolean;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 109
    :catch_0
    move-exception v0

    .line 110
    invoke-static {v0}, Lcom/heyzap/internal/Logger;->log(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public didInstall(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/Boolean;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Boolean;",
            ")V"
        }
    .end annotation

    .prologue
    const-string v2, "platform"

    .line 44
    new-instance v0, Lcom/heyzap/http/RequestParams;

    invoke-direct {v0}, Lcom/heyzap/http/RequestParams;-><init>()V

    .line 46
    invoke-static {}, Lcom/heyzap/internal/Utils;->isAmazon()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 47
    const-string v1, "platform"

    const-string v1, "amazon"

    invoke-virtual {v0, v2, v1}, Lcom/heyzap/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    :goto_0
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 53
    const-string v1, "install_type"

    const-string v2, "rejected"

    invoke-virtual {v0, v1, v2}, Lcom/heyzap/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    :cond_0
    const-string v1, ","

    invoke-virtual {p2}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 57
    const-string v2, "impression_id"

    invoke-virtual {v0, v2, v1}, Lcom/heyzap/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/heyzap/house/Manager;->AD_SERVER:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/event/install"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/heyzap/house/handler/AttributionHandler$1;

    invoke-direct {v2, p0, p3, p1, p2}, Lcom/heyzap/house/handler/AttributionHandler$1;-><init>(Lcom/heyzap/house/handler/AttributionHandler;Ljava/lang/Boolean;Landroid/content/Context;Ljava/util/ArrayList;)V

    invoke-static {p1, v1, v0, v2}, Lcom/heyzap/internal/APIClient;->post(Landroid/content/Context;Ljava/lang/String;Lcom/heyzap/http/RequestParams;Lcom/heyzap/http/AsyncHttpResponseHandler;)V

    .line 88
    return-void

    .line 49
    :cond_1
    const-string v1, "platform"

    const-string v1, "android"

    invoke-virtual {v0, v2, v1}, Lcom/heyzap/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public doSelfInstall(Landroid/content/Context;)V
    .locals 4

    .prologue
    const-string v2, "platform"

    .line 115
    if-nez p1, :cond_0

    .line 144
    :goto_0
    return-void

    .line 119
    :cond_0
    new-instance v0, Lcom/heyzap/http/RequestParams;

    invoke-direct {v0}, Lcom/heyzap/http/RequestParams;-><init>()V

    .line 121
    invoke-static {}, Lcom/heyzap/internal/Utils;->isAmazon()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 122
    const-string v1, "platform"

    const-string v1, "amazon"

    invoke-virtual {v0, v2, v1}, Lcom/heyzap/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    :goto_1
    invoke-static {p1}, Lcom/heyzap/internal/Utils;->getPackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 128
    const-string v2, "for_game_package"

    invoke-virtual {v0, v2, v1}, Lcom/heyzap/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/heyzap/house/Manager;->AD_SERVER:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/register_new_game_install"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/heyzap/house/handler/AttributionHandler$2;

    invoke-direct {v3, p0, v1}, Lcom/heyzap/house/handler/AttributionHandler$2;-><init>(Lcom/heyzap/house/handler/AttributionHandler;Ljava/lang/String;)V

    invoke-static {p1, v2, v0, v3}, Lcom/heyzap/internal/APIClient;->post(Landroid/content/Context;Ljava/lang/String;Lcom/heyzap/http/RequestParams;Lcom/heyzap/http/AsyncHttpResponseHandler;)V

    goto :goto_0

    .line 124
    :cond_1
    const-string v1, "platform"

    const-string v1, "android"

    invoke-virtual {v0, v2, v1}, Lcom/heyzap/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method
