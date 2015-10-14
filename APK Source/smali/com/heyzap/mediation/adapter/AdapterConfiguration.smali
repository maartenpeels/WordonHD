.class public Lcom/heyzap/mediation/adapter/AdapterConfiguration;
.super Ljava/lang/Object;
.source "AdapterConfiguration.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/heyzap/mediation/adapter/AdapterConfiguration$AdapterConfigurationError;
    }
.end annotation


# instance fields
.field private adUnits:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet",
            "<",
            "Lcom/heyzap/internal/Constants$AdUnit;",
            ">;"
        }
    .end annotation
.end field

.field private adapterClassName:Ljava/lang/String;

.field private classNames:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private data:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private networkName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/heyzap/mediation/adapter/AdapterConfiguration$AdapterConfigurationError;
        }
    .end annotation

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/heyzap/mediation/adapter/AdapterConfiguration;->classNames:Ljava/util/LinkedList;

    .line 19
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/heyzap/mediation/adapter/AdapterConfiguration;->adUnits:Ljava/util/EnumSet;

    .line 42
    invoke-direct {p0, p1, p2, p3}, Lcom/heyzap/mediation/adapter/AdapterConfiguration;->initialize(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 43
    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/heyzap/mediation/adapter/AdapterConfiguration$AdapterConfigurationError;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/heyzap/mediation/adapter/AdapterConfiguration;->classNames:Ljava/util/LinkedList;

    .line 19
    iput-object v7, p0, Lcom/heyzap/mediation/adapter/AdapterConfiguration;->adUnits:Ljava/util/EnumSet;

    .line 22
    const-string v0, "name"

    invoke-virtual {p1, v0, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 23
    const-string v0, "custom_class"

    invoke-virtual {p1, v0, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 25
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 26
    const-string v0, "data"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    .line 27
    if-eqz v4, :cond_1

    .line 28
    invoke-virtual {v4}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v5

    .line 29
    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 30
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 31
    invoke-virtual {v4, v0, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 32
    if-eqz v6, :cond_0

    .line 33
    invoke-virtual {v3, v0, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 38
    :cond_1
    invoke-direct {p0, v1, v2, v3}, Lcom/heyzap/mediation/adapter/AdapterConfiguration;->initialize(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 39
    return-void
.end method

.method private initialize(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/heyzap/mediation/adapter/AdapterConfiguration$AdapterConfigurationError;
        }
    .end annotation

    .prologue
    .line 47
    if-nez p1, :cond_0

    .line 48
    new-instance v0, Lcom/heyzap/mediation/adapter/AdapterConfiguration$AdapterConfigurationError;

    const-string v1, "No canonical name."

    invoke-direct {v0, p0, v1}, Lcom/heyzap/mediation/adapter/AdapterConfiguration$AdapterConfigurationError;-><init>(Lcom/heyzap/mediation/adapter/AdapterConfiguration;Ljava/lang/String;)V

    throw v0

    .line 51
    :cond_0
    iput-object p2, p0, Lcom/heyzap/mediation/adapter/AdapterConfiguration;->adapterClassName:Ljava/lang/String;

    .line 52
    iput-object p1, p0, Lcom/heyzap/mediation/adapter/AdapterConfiguration;->networkName:Ljava/lang/String;

    .line 53
    iput-object p3, p0, Lcom/heyzap/mediation/adapter/AdapterConfiguration;->data:Ljava/util/Map;

    .line 54
    return-void
.end method


# virtual methods
.method public getAdapterClassName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/heyzap/mediation/adapter/AdapterConfiguration;->adapterClassName:Ljava/lang/String;

    return-object v0
.end method

.method public getCanonicalName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/heyzap/mediation/adapter/AdapterConfiguration;->networkName:Ljava/lang/String;

    return-object v0
.end method

.method public getValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/heyzap/mediation/adapter/AdapterConfiguration;->data:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 70
    iget-object v0, p0, Lcom/heyzap/mediation/adapter/AdapterConfiguration;->data:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    move-object v0, p0

    .line 73
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isCapableOfAdUnit(Lcom/heyzap/internal/Constants$AdUnit;)Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/heyzap/mediation/adapter/AdapterConfiguration;->adUnits:Ljava/util/EnumSet;

    if-eqz v0, :cond_0

    .line 62
    iget-object v0, p0, Lcom/heyzap/mediation/adapter/AdapterConfiguration;->adUnits:Ljava/util/EnumSet;

    invoke-virtual {v0, p1}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 65
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0
.end method

.method public isHeyzap()Ljava/lang/Boolean;
    .locals 2

    .prologue
    .line 89
    invoke-virtual {p0}, Lcom/heyzap/mediation/adapter/AdapterConfiguration;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "heyzap"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public setCapableAdUnits(Ljava/util/EnumSet;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/EnumSet",
            "<",
            "Lcom/heyzap/internal/Constants$AdUnit;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 57
    iput-object p1, p0, Lcom/heyzap/mediation/adapter/AdapterConfiguration;->adUnits:Ljava/util/EnumSet;

    .line 58
    return-void
.end method

.method public setClassName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 85
    iput-object p1, p0, Lcom/heyzap/mediation/adapter/AdapterConfiguration;->adapterClassName:Ljava/lang/String;

    .line 86
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 101
    const-string v0, "<AdapterConfiguration name: %s, kl: %s>"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/heyzap/mediation/adapter/AdapterConfiguration;->getCanonicalName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/heyzap/mediation/adapter/AdapterConfiguration;->getAdapterClassName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
