.class public Lcom/heyzap/house/model/NativeModel;
.super Lcom/heyzap/house/model/AdModel;
.source "NativeModel.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static FORMAT:Ljava/lang/String;


# instance fields
.field public data:Lorg/json/JSONObject;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    const-string v0, "native"

    sput-object v0, Lcom/heyzap/house/model/NativeModel;->FORMAT:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;,
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const-string v1, "data"

    .line 19
    invoke-direct {p0, p1}, Lcom/heyzap/house/model/AdModel;-><init>(Lorg/json/JSONObject;)V

    .line 21
    sget-object v0, Lcom/heyzap/house/model/NativeModel;->FORMAT:Ljava/lang/String;

    iput-object v0, p0, Lcom/heyzap/house/model/NativeModel;->creativeType:Ljava/lang/String;

    .line 23
    const-string v0, "data"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "data"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 24
    const-string v0, "data"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    iput-object v0, p0, Lcom/heyzap/house/model/NativeModel;->data:Lorg/json/JSONObject;

    .line 28
    return-void

    .line 26
    :cond_0
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "no_data"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public cleanup(Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 34
    return-void
.end method

.method public doPostFetchActions(Landroid/content/Context;Lcom/heyzap/house/model/AdModel$ModelPostFetchCompleteListener;)V
    .locals 1

    .prologue
    .line 39
    if-eqz p2, :cond_0

    .line 40
    const/4 v0, 0x0

    invoke-interface {p2, p0, v0}, Lcom/heyzap/house/model/AdModel$ModelPostFetchCompleteListener;->onComplete(Lcom/heyzap/house/model/AdModel;Ljava/lang/Throwable;)V

    .line 42
    :cond_0
    return-void
.end method
