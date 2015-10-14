.class public Lcom/jirbo/airadc/ConfigureFunction;
.super Ljava/lang/Object;
.source "ConfigureFunction.java"

# interfaces
.implements Lcom/adobe/fre/FREFunction;


# static fields
.field public static final KEY:Ljava/lang/String; = "configure_function"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/adobe/fre/FREContext;[Lcom/adobe/fre/FREObject;)Lcom/adobe/fre/FREObject;
    .locals 14
    .param p1, "context"    # Lcom/adobe/fre/FREContext;
    .param p2, "args"    # [Lcom/adobe/fre/FREObject;

    .prologue
    .line 18
    move-object v0, p1

    check-cast v0, Lcom/jirbo/airadc/AirADCContext;

    move-object v4, v0

    .line 19
    .local v4, "ctx":Lcom/jirbo/airadc/AirADCContext;
    const/4 v8, 0x0

    .line 22
    .local v8, "ret_val":Lcom/adobe/fre/FREObject;
    :try_start_0
    invoke-virtual {v4}, Lcom/jirbo/airadc/AirADCContext;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 23
    .local v1, "activity":Landroid/app/Activity;
    const/4 v10, 0x0

    aget-object v10, p2, v10

    invoke-virtual {v10}, Lcom/adobe/fre/FREObject;->getAsString()Ljava/lang/String;

    move-result-object v3

    .line 24
    .local v3, "client_opts":Ljava/lang/String;
    const/4 v10, 0x1

    aget-object v10, p2, v10

    invoke-virtual {v10}, Lcom/adobe/fre/FREObject;->getAsString()Ljava/lang/String;

    move-result-object v2

    .line 27
    .local v2, "app_id":Ljava/lang/String;
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 28
    .local v9, "zone_ids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v6, 0x0

    .end local p0    # "this":Lcom/jirbo/airadc/ConfigureFunction;
    .local v6, "i":I
    :goto_0
    int-to-long v10, v6

    const/4 v12, 0x2

    aget-object p0, p2, v12

    check-cast p0, Lcom/adobe/fre/FREArray;

    invoke-virtual {p0}, Lcom/adobe/fre/FREArray;->getLength()J

    move-result-wide v12

    cmp-long v10, v10, v12

    if-gez v10, :cond_0

    .line 30
    const/4 v10, 0x2

    aget-object p0, p2, v10

    check-cast p0, Lcom/adobe/fre/FREArray;

    int-to-long v10, v6

    invoke-virtual {p0, v10, v11}, Lcom/adobe/fre/FREArray;->getObjectAt(J)Lcom/adobe/fre/FREObject;

    move-result-object v10

    invoke-virtual {v10}, Lcom/adobe/fre/FREObject;->getAsString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 28
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 33
    :cond_0
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v10

    new-array v10, v10, [Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ljava/lang/String;

    .line 34
    .local v7, "ids":[Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v10, "AdColonyANE"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Configuring with app ID: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " and zone ids: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static {v7}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    invoke-static {v1, v3, v2, v7}, Lcom/jirbo/adcolony/AdColony;->configure(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 36
    iget-object v10, v4, Lcom/jirbo/airadc/AirADCContext;->listener:Lcom/jirbo/airadc/ADCListener;

    invoke-static {v10}, Lcom/jirbo/adcolony/AdColony;->addV4VCListener(Lcom/jirbo/adcolony/AdColonyV4VCListener;)V

    .line 37
    iget-object v10, v4, Lcom/jirbo/airadc/AirADCContext;->listener:Lcom/jirbo/airadc/ADCListener;

    invoke-static {v10}, Lcom/jirbo/adcolony/AdColony;->addAdAvailabilityListener(Lcom/jirbo/adcolony/AdColonyAdAvailabilityListener;)V

    .line 38
    const/4 v10, 0x1

    iput-boolean v10, v4, Lcom/jirbo/airadc/AirADCContext;->configured:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 45
    .end local v1    # "activity":Landroid/app/Activity;
    .end local v2    # "app_id":Ljava/lang/String;
    .end local v3    # "client_opts":Ljava/lang/String;
    .end local v6    # "i":I
    .end local v7    # "ids":[Ljava/lang/String;
    .end local v9    # "zone_ids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_1
    return-object v8

    .line 40
    :catch_0
    move-exception v10

    move-object v5, v10

    .line 42
    .local v5, "e":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v10, "AdColonyANE"

    invoke-virtual {v5}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method
