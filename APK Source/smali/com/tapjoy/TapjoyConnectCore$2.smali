.class Lcom/tapjoy/TapjoyConnectCore$2;
.super Ljava/lang/Object;
.source "TapjoyConnectCore.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tapjoy/TapjoyConnectCore;->fetchAdvertisingID()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tapjoy/TapjoyConnectCore;


# direct methods
.method constructor <init>(Lcom/tapjoy/TapjoyConnectCore;)V
    .locals 0

    .prologue
    .line 294
    iput-object p1, p0, Lcom/tapjoy/TapjoyConnectCore$2;->this$0:Lcom/tapjoy/TapjoyConnectCore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    .prologue
    const/4 v12, 0x1

    const/4 v10, 0x0

    const-string v11, "TapjoyConnect"

    .line 301
    :try_start_0
    const-string v7, "com.google.android.gms.ads.identifier.AdvertisingIdClient"

    invoke-static {v7}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 302
    .local v0, "adCls":Ljava/lang/Class;
    const/4 v7, 0x1

    new-array v2, v7, [Ljava/lang/Class;

    .line 303
    .local v2, "args":[Ljava/lang/Class;
    const/4 v7, 0x0

    const-class v8, Landroid/content/Context;

    aput-object v8, v2, v7

    .line 305
    const-string v7, "getAdvertisingIdInfo"

    invoke-virtual {v0, v7, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    .line 307
    .local v6, "getInfoMethod":Ljava/lang/reflect/Method;
    const-string v7, "TapjoyConnect"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Found method: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 309
    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    # getter for: Lcom/tapjoy/TapjoyConnectCore;->context:Landroid/content/Context;
    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->access$200()Landroid/content/Context;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-virtual {v6, v0, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 311
    .local v1, "adInfo":Ljava/lang/Object;
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    const-string v8, "isLimitAdTrackingEnabled"

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Class;

    invoke-virtual {v7, v8, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 312
    .local v4, "getEnabledMethod":Ljava/lang/reflect/Method;
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    const-string v8, "getId"

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Class;

    invoke-virtual {v7, v8, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    .line 313
    .local v5, "getIdMethod":Ljava/lang/reflect/Method;
    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {v4, v1, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-nez v7, :cond_1

    move v7, v12

    :goto_0
    sput-boolean v7, Lcom/tapjoy/TapjoyConnectCore;->adTrackingEnabled:Z

    .line 314
    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {v5, v1, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    sput-object v7, Lcom/tapjoy/TapjoyConnectCore;->advertisingID:Ljava/lang/String;

    .line 316
    const-string v7, "TapjoyConnect"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Found advertising ID: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Lcom/tapjoy/TapjoyConnectCore;->advertisingID:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 317
    const-string v7, "TapjoyConnect"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Is ad tracking enabled: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-boolean v9, Lcom/tapjoy/TapjoyConnectCore;->adTrackingEnabled:Z

    invoke-static {v9}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 323
    .end local v0    # "adCls":Ljava/lang/Class;
    .end local v1    # "adInfo":Ljava/lang/Object;
    .end local v2    # "args":[Ljava/lang/Class;
    .end local v4    # "getEnabledMethod":Ljava/lang/reflect/Method;
    .end local v5    # "getIdMethod":Ljava/lang/reflect/Method;
    .end local v6    # "getInfoMethod":Ljava/lang/reflect/Method;
    :goto_1
    # invokes: Lcom/tapjoy/TapjoyConnectCore;->arePersistentIdsDisabled()Z
    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->access$300()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 325
    const-string v7, "TapjoyConnect"

    const-string v7, "Disabling persistent IDs. Do this only if you are not using Tapjoy to manage currency."

    invoke-static {v11, v7}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 329
    :cond_0
    iget-object v7, p0, Lcom/tapjoy/TapjoyConnectCore$2;->this$0:Lcom/tapjoy/TapjoyConnectCore;

    invoke-virtual {v7}, Lcom/tapjoy/TapjoyConnectCore;->completeConnectCall()V

    .line 331
    return-void

    .restart local v0    # "adCls":Ljava/lang/Class;
    .restart local v1    # "adInfo":Ljava/lang/Object;
    .restart local v2    # "args":[Ljava/lang/Class;
    .restart local v4    # "getEnabledMethod":Ljava/lang/reflect/Method;
    .restart local v5    # "getIdMethod":Ljava/lang/reflect/Method;
    .restart local v6    # "getInfoMethod":Ljava/lang/reflect/Method;
    :cond_1
    move v7, v10

    .line 313
    goto :goto_0

    .line 318
    .end local v0    # "adCls":Ljava/lang/Class;
    .end local v1    # "adInfo":Ljava/lang/Object;
    .end local v2    # "args":[Ljava/lang/Class;
    .end local v4    # "getEnabledMethod":Ljava/lang/reflect/Method;
    .end local v5    # "getIdMethod":Ljava/lang/reflect/Method;
    .end local v6    # "getInfoMethod":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v7

    move-object v3, v7

    .line 320
    .local v3, "e":Ljava/lang/Exception;
    const-string v7, "TapjoyConnect"

    const-string v7, "Error getting advertisingID from Google Play Services"

    invoke-static {v11, v7}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method
