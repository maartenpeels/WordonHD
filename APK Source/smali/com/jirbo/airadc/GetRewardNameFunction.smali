.class Lcom/jirbo/airadc/GetRewardNameFunction;
.super Ljava/lang/Object;
.source "GetRewardNameFunction.java"

# interfaces
.implements Lcom/adobe/fre/FREFunction;


# static fields
.field public static final KEY:Ljava/lang/String; = "get_v4vc_name_function"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/adobe/fre/FREContext;[Lcom/adobe/fre/FREObject;)Lcom/adobe/fre/FREObject;
    .locals 8
    .param p1, "context"    # Lcom/adobe/fre/FREContext;
    .param p2, "args"    # [Lcom/adobe/fre/FREObject;

    .prologue
    const-string v7, "AdColonyANE"

    .line 17
    move-object v0, p1

    check-cast v0, Lcom/jirbo/airadc/AirADCContext;

    move-object v2, v0

    .line 18
    .local v2, "ctx":Lcom/jirbo/airadc/AirADCContext;
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v6, "AdColonyANE"

    const-string v6, "GetV4VCName"

    invoke-static {v7, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    const/4 v4, 0x0

    .line 23
    .local v4, "ret_val":Lcom/adobe/fre/FREObject;
    :try_start_0
    iget-boolean v6, v2, Lcom/jirbo/airadc/AirADCContext;->configured:Z

    if-nez v6, :cond_0

    const-string v6, "undefined"

    invoke-static {v6}, Lcom/adobe/fre/FREObject;->newObject(Ljava/lang/String;)Lcom/adobe/fre/FREObject;

    move-result-object v6

    .line 39
    :goto_0
    return-object v6

    .line 24
    :cond_0
    const/4 v6, 0x0

    aget-object v6, p2, v6

    invoke-virtual {v6}, Lcom/adobe/fre/FREObject;->getAsString()Ljava/lang/String;

    move-result-object v5

    .line 26
    .local v5, "zone_id":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_1

    .line 27
    new-instance v1, Lcom/jirbo/adcolony/AdColonyV4VCAd;

    invoke-direct {v1, v5}, Lcom/jirbo/adcolony/AdColonyV4VCAd;-><init>(Ljava/lang/String;)V

    .line 32
    .local v1, "ad":Lcom/jirbo/adcolony/AdColonyV4VCAd;
    :goto_1
    invoke-virtual {v1}, Lcom/jirbo/adcolony/AdColonyV4VCAd;->getRewardName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/adobe/fre/FREObject;->newObject(Ljava/lang/String;)Lcom/adobe/fre/FREObject;

    move-result-object v4

    .end local v1    # "ad":Lcom/jirbo/adcolony/AdColonyV4VCAd;
    .end local v5    # "zone_id":Ljava/lang/String;
    :goto_2
    move-object v6, v4

    .line 39
    goto :goto_0

    .line 30
    .restart local v5    # "zone_id":Ljava/lang/String;
    :cond_1
    new-instance v1, Lcom/jirbo/adcolony/AdColonyV4VCAd;

    invoke-direct {v1}, Lcom/jirbo/adcolony/AdColonyV4VCAd;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .restart local v1    # "ad":Lcom/jirbo/adcolony/AdColonyV4VCAd;
    goto :goto_1

    .line 34
    .end local v1    # "ad":Lcom/jirbo/adcolony/AdColonyV4VCAd;
    .end local v5    # "zone_id":Ljava/lang/String;
    :catch_0
    move-exception v6

    move-object v3, v6

    .line 36
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v6, "AdColonyANE"

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2
.end method
