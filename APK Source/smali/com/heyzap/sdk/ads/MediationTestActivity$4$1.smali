.class Lcom/heyzap/sdk/ads/MediationTestActivity$4$1;
.super Lcom/heyzap/http/AsyncHttpResponseHandler;
.source "MediationTestActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/heyzap/sdk/ads/MediationTestActivity$4;->onConfigLoaded(Lcom/heyzap/mediation/config/MediationConfig;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/heyzap/sdk/ads/MediationTestActivity$4;


# direct methods
.method constructor <init>(Lcom/heyzap/sdk/ads/MediationTestActivity$4;)V
    .locals 0

    .prologue
    .line 108
    iput-object p1, p0, Lcom/heyzap/sdk/ads/MediationTestActivity$4$1;->this$1:Lcom/heyzap/sdk/ads/MediationTestActivity$4;

    invoke-direct {p0}, Lcom/heyzap/http/AsyncHttpResponseHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(I[Lorg/apache/http/Header;[BLjava/lang/Throwable;)V
    .locals 2

    .prologue
    .line 142
    iget-object v0, p0, Lcom/heyzap/sdk/ads/MediationTestActivity$4$1;->this$1:Lcom/heyzap/sdk/ads/MediationTestActivity$4;

    iget-object v0, v0, Lcom/heyzap/sdk/ads/MediationTestActivity$4;->this$0:Lcom/heyzap/sdk/ads/MediationTestActivity;

    iget-object v0, v0, Lcom/heyzap/sdk/ads/MediationTestActivity;->currentNetworks:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/heyzap/sdk/mediation/testactivity/NetworkStatus;

    .line 143
    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Lcom/heyzap/sdk/mediation/testactivity/NetworkStatus;->setRemoteStatus(I)V

    goto :goto_0

    .line 145
    :cond_0
    return-void
.end method

.method public onSuccess(I[Lorg/apache/http/Header;[B)V
    .locals 5

    .prologue
    const/4 v2, 0x0

    const-string v0, "name"

    .line 113
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p3}, Ljava/lang/String;-><init>([B)V

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 114
    const-string v1, "networks"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 115
    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge v2, v0, :cond_3

    .line 116
    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 117
    iget-object v0, p0, Lcom/heyzap/sdk/ads/MediationTestActivity$4$1;->this$1:Lcom/heyzap/sdk/ads/MediationTestActivity$4;

    iget-object v0, v0, Lcom/heyzap/sdk/ads/MediationTestActivity$4;->this$0:Lcom/heyzap/sdk/ads/MediationTestActivity;

    iget-object v0, v0, Lcom/heyzap/sdk/ads/MediationTestActivity;->currentNetworks:Ljava/util/TreeMap;

    const-string v4, "name"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/TreeMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 115
    :goto_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 120
    :cond_0
    iget-object v0, p0, Lcom/heyzap/sdk/ads/MediationTestActivity$4$1;->this$1:Lcom/heyzap/sdk/ads/MediationTestActivity$4;

    iget-object v0, v0, Lcom/heyzap/sdk/ads/MediationTestActivity$4;->this$0:Lcom/heyzap/sdk/ads/MediationTestActivity;

    iget-object v0, v0, Lcom/heyzap/sdk/ads/MediationTestActivity;->currentNetworks:Ljava/util/TreeMap;

    const-string v4, "name"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/heyzap/sdk/mediation/testactivity/NetworkStatus;

    .line 121
    const-string v4, "data"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    .line 122
    invoke-virtual {v4}, Lorg/json/JSONObject;->length()I

    move-result v4

    if-nez v4, :cond_1

    .line 123
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/heyzap/sdk/mediation/testactivity/NetworkStatus;->setRemoteStatus(I)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 133
    :catch_0
    move-exception v0

    .line 134
    iget-object v0, p0, Lcom/heyzap/sdk/ads/MediationTestActivity$4$1;->this$1:Lcom/heyzap/sdk/ads/MediationTestActivity$4;

    iget-object v0, v0, Lcom/heyzap/sdk/ads/MediationTestActivity$4;->this$0:Lcom/heyzap/sdk/ads/MediationTestActivity;

    iget-object v0, v0, Lcom/heyzap/sdk/ads/MediationTestActivity;->currentNetworks:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/heyzap/sdk/mediation/testactivity/NetworkStatus;

    .line 135
    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Lcom/heyzap/sdk/mediation/testactivity/NetworkStatus;->setRemoteStatus(I)V

    goto :goto_2

    .line 125
    :cond_1
    :try_start_1
    const-string v4, "enabled"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v0}, Lcom/heyzap/sdk/mediation/testactivity/NetworkStatus;->getNetworkAdapter()Lcom/heyzap/mediation/abstr/NetworkAdapter;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {v0}, Lcom/heyzap/sdk/mediation/testactivity/NetworkStatus;->getNetworkAdapter()Lcom/heyzap/mediation/abstr/NetworkAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/heyzap/mediation/abstr/NetworkAdapter;->isInitialized()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 126
    invoke-virtual {v0}, Lcom/heyzap/sdk/mediation/testactivity/NetworkStatus;->getNetworkAdapter()Lcom/heyzap/mediation/abstr/NetworkAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/heyzap/mediation/abstr/NetworkAdapter;->getFetchStore()Lcom/heyzap/mediation/FetchRequestStore;

    move-result-object v3

    iput-object v3, v0, Lcom/heyzap/sdk/mediation/testactivity/NetworkStatus;->fetchRequestStore:Lcom/heyzap/mediation/FetchRequestStore;

    .line 127
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/heyzap/sdk/mediation/testactivity/NetworkStatus;->setRemoteStatus(I)V

    goto :goto_1

    .line 129
    :cond_2
    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Lcom/heyzap/sdk/mediation/testactivity/NetworkStatus;->setRemoteStatus(I)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 138
    :cond_3
    return-void
.end method
