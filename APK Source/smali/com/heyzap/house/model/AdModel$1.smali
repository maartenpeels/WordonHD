.class Lcom/heyzap/house/model/AdModel$1;
.super Lcom/heyzap/http/JsonHttpResponseHandler;
.source "AdModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/heyzap/house/model/AdModel;->onClick(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Boolean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/heyzap/house/model/AdModel;


# direct methods
.method constructor <init>(Lcom/heyzap/house/model/AdModel;)V
    .locals 0

    .prologue
    .line 160
    iput-object p1, p0, Lcom/heyzap/house/model/AdModel$1;->this$0:Lcom/heyzap/house/model/AdModel;

    invoke-direct {p0}, Lcom/heyzap/http/JsonHttpResponseHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public onSuccess(I[Lorg/apache/http/Header;Lorg/json/JSONObject;)V
    .locals 4

    .prologue
    .line 165
    :try_start_0
    const-string v0, "status"

    invoke-virtual {p3, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_0

    .line 166
    const-string v0, "(CLICK) %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/heyzap/house/model/AdModel$1;->this$0:Lcom/heyzap/house/model/AdModel;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/heyzap/internal/Logger;->format(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 167
    iget-object v0, p0, Lcom/heyzap/house/model/AdModel$1;->this$0:Lcom/heyzap/house/model/AdModel;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    # setter for: Lcom/heyzap/house/model/AdModel;->sentClick:Ljava/lang/Boolean;
    invoke-static {v0, v1}, Lcom/heyzap/house/model/AdModel;->access$002(Lcom/heyzap/house/model/AdModel;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 172
    :cond_0
    :goto_0
    return-void

    .line 169
    :catch_0
    move-exception v0

    goto :goto_0
.end method
