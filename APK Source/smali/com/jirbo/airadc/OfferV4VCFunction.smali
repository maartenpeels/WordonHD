.class Lcom/jirbo/airadc/OfferV4VCFunction;
.super Ljava/lang/Object;
.source "OfferV4VCFunction.java"

# interfaces
.implements Lcom/adobe/fre/FREFunction;


# static fields
.field public static final KEY:Ljava/lang/String; = "offer_v4vc_function"


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
    .locals 9
    .param p1, "context"    # Lcom/adobe/fre/FREContext;
    .param p2, "args"    # [Lcom/adobe/fre/FREObject;

    .prologue
    const-string v8, "AdColonyANE"

    .line 16
    move-object v0, p1

    check-cast v0, Lcom/jirbo/airadc/AirADCContext;

    move-object v1, v0

    .line 17
    .local v1, "ctx":Lcom/jirbo/airadc/AirADCContext;
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v6, "AdColonyANE"

    const-string v6, "OfferV4VC"

    invoke-static {v8, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    const/4 v4, 0x0

    .line 22
    .local v4, "ret_val":Lcom/adobe/fre/FREObject;
    :try_start_0
    iget-boolean v6, v1, Lcom/jirbo/airadc/AirADCContext;->configured:Z

    if-nez v6, :cond_0

    const/4 v6, 0x0

    invoke-static {v6}, Lcom/adobe/fre/FREObject;->newObject(Z)Lcom/adobe/fre/FREObject;

    move-result-object v6

    .line 40
    :goto_0
    return-object v6

    .line 24
    :cond_0
    const/4 v6, 0x0

    aget-object v6, p2, v6

    invoke-virtual {v6}, Lcom/adobe/fre/FREObject;->getAsBool()Z

    move-result v3

    .line 25
    .local v3, "popup":Z
    const/4 v6, 0x1

    aget-object v6, p2, v6

    invoke-virtual {v6}, Lcom/adobe/fre/FREObject;->getAsString()Ljava/lang/String;

    move-result-object v5

    .line 28
    .local v5, "zone_id":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_1

    .line 29
    new-instance v6, Lcom/jirbo/adcolony/AdColonyV4VCAd;

    invoke-direct {v6, v5}, Lcom/jirbo/adcolony/AdColonyV4VCAd;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Lcom/jirbo/adcolony/AdColonyV4VCAd;->withConfirmationDialog()Lcom/jirbo/adcolony/AdColonyV4VCAd;

    move-result-object v6

    invoke-virtual {v6, v3}, Lcom/jirbo/adcolony/AdColonyV4VCAd;->withResultsDialog(Z)Lcom/jirbo/adcolony/AdColonyV4VCAd;

    move-result-object v6

    iget-object v7, v1, Lcom/jirbo/airadc/AirADCContext;->listener:Lcom/jirbo/airadc/ADCListener;

    invoke-virtual {v6, v7}, Lcom/jirbo/adcolony/AdColonyV4VCAd;->withListener(Lcom/jirbo/adcolony/AdColonyAdListener;)Lcom/jirbo/adcolony/AdColonyV4VCAd;

    move-result-object v6

    invoke-virtual {v6}, Lcom/jirbo/adcolony/AdColonyV4VCAd;->show()V

    .end local v3    # "popup":Z
    .end local v5    # "zone_id":Ljava/lang/String;
    :goto_1
    move-object v6, v4

    .line 40
    goto :goto_0

    .line 32
    .restart local v3    # "popup":Z
    .restart local v5    # "zone_id":Ljava/lang/String;
    :cond_1
    new-instance v6, Lcom/jirbo/adcolony/AdColonyV4VCAd;

    invoke-direct {v6}, Lcom/jirbo/adcolony/AdColonyV4VCAd;-><init>()V

    invoke-virtual {v6}, Lcom/jirbo/adcolony/AdColonyV4VCAd;->withConfirmationDialog()Lcom/jirbo/adcolony/AdColonyV4VCAd;

    move-result-object v6

    invoke-virtual {v6, v3}, Lcom/jirbo/adcolony/AdColonyV4VCAd;->withResultsDialog(Z)Lcom/jirbo/adcolony/AdColonyV4VCAd;

    move-result-object v6

    iget-object v7, v1, Lcom/jirbo/airadc/AirADCContext;->listener:Lcom/jirbo/airadc/ADCListener;

    invoke-virtual {v6, v7}, Lcom/jirbo/adcolony/AdColonyV4VCAd;->withListener(Lcom/jirbo/adcolony/AdColonyAdListener;)Lcom/jirbo/adcolony/AdColonyV4VCAd;

    move-result-object v6

    invoke-virtual {v6}, Lcom/jirbo/adcolony/AdColonyV4VCAd;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 35
    .end local v3    # "popup":Z
    .end local v5    # "zone_id":Ljava/lang/String;
    :catch_0
    move-exception v6

    move-object v2, v6

    .line 37
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v6, "AdColonyANE"

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v8, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method
