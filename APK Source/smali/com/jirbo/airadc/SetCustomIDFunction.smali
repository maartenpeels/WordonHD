.class Lcom/jirbo/airadc/SetCustomIDFunction;
.super Ljava/lang/Object;
.source "SetCustomIDFunction.java"

# interfaces
.implements Lcom/adobe/fre/FREFunction;


# static fields
.field public static final KEY:Ljava/lang/String; = "set_custom_id_function"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/adobe/fre/FREContext;[Lcom/adobe/fre/FREObject;)Lcom/adobe/fre/FREObject;
    .locals 7
    .param p1, "context"    # Lcom/adobe/fre/FREContext;
    .param p2, "args"    # [Lcom/adobe/fre/FREObject;

    .prologue
    const-string v6, "AdColonyANE"

    .line 16
    move-object v0, p1

    check-cast v0, Lcom/jirbo/airadc/AirADCContext;

    move-object v1, v0

    .line 17
    .local v1, "ctx":Lcom/jirbo/airadc/AirADCContext;
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v5, "AdColonyANE"

    const-string v5, "SetCustomID"

    invoke-static {v6, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    const/4 v4, 0x0

    .line 21
    .local v4, "ret_val":Lcom/adobe/fre/FREObject;
    const/4 v5, 0x0

    :try_start_0
    aget-object v5, p2, v5

    invoke-virtual {v5}, Lcom/adobe/fre/FREObject;->getAsString()Ljava/lang/String;

    move-result-object v2

    .line 22
    .local v2, "custom_id":Ljava/lang/String;
    invoke-static {v2}, Lcom/jirbo/adcolony/AdColony;->setCustomID(Ljava/lang/String;)V

    .line 23
    const/4 v5, 0x1

    invoke-static {v5}, Lcom/adobe/fre/FREObject;->newObject(Z)Lcom/adobe/fre/FREObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 30
    .end local v2    # "custom_id":Ljava/lang/String;
    :goto_0
    return-object v4

    .line 25
    :catch_0
    move-exception v5

    move-object v3, v5

    .line 27
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v5, "AdColonyANE"

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
