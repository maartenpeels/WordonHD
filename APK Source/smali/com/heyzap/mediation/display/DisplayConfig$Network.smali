.class public Lcom/heyzap/mediation/display/DisplayConfig$Network;
.super Ljava/lang/Object;
.source "DisplayConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/heyzap/mediation/display/DisplayConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Network"
.end annotation


# instance fields
.field public id:Ljava/lang/String;

.field public network:Ljava/lang/String;

.field public score:Ljava/lang/Double;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Double;)V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p2, p0, Lcom/heyzap/mediation/display/DisplayConfig$Network;->id:Ljava/lang/String;

    .line 53
    iput-object p3, p0, Lcom/heyzap/mediation/display/DisplayConfig$Network;->score:Ljava/lang/Double;

    .line 54
    iput-object p1, p0, Lcom/heyzap/mediation/display/DisplayConfig$Network;->network:Ljava/lang/String;

    .line 55
    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    const-string v0, "id"

    const-string v1, "none"

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/heyzap/mediation/display/DisplayConfig$Network;->id:Ljava/lang/String;

    .line 47
    const-string v0, "score"

    const-wide/16 v1, 0x0

    invoke-virtual {p1, v0, v1, v2}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lcom/heyzap/mediation/display/DisplayConfig$Network;->score:Ljava/lang/Double;

    .line 48
    const-string v0, "network"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/heyzap/mediation/display/DisplayConfig$Network;->network:Ljava/lang/String;

    .line 49
    return-void
.end method
