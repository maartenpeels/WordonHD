.class final Lc/m/x/a/ep/af;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/adobe/fre/FREFunction;


# instance fields
.field final synthetic a:Lc/m/x/a/ep/p;


# direct methods
.method private constructor <init>(Lc/m/x/a/ep/p;)V
    .locals 0

    iput-object p1, p0, Lc/m/x/a/ep/af;->a:Lc/m/x/a/ep/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lc/m/x/a/ep/p;B)V
    .locals 0

    invoke-direct {p0, p1}, Lc/m/x/a/ep/af;-><init>(Lc/m/x/a/ep/p;)V

    return-void
.end method


# virtual methods
.method public final call(Lcom/adobe/fre/FREContext;[Lcom/adobe/fre/FREObject;)Lcom/adobe/fre/FREObject;
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_0
    aget-object v1, p2, v1

    invoke-virtual {v1}, Lcom/adobe/fre/FREObject;->getAsDouble()D

    move-result-wide v1

    double-to-long v1, v1

    const/4 v3, 0x1

    aget-object v3, p2, v3

    invoke-virtual {v3}, Lcom/adobe/fre/FREObject;->getAsDouble()D

    move-result-wide v3

    double-to-long v3, v3

    iget-object v5, p0, Lc/m/x/a/ep/af;->a:Lc/m/x/a/ep/p;

    invoke-static {v1, v2, v3, v4}, Lc/m/x/a/ep/p;->a(JJ)Z

    const/4 v1, 0x1

    invoke-static {v1}, Lcom/adobe/fre/FREObject;->newObject(Z)Lcom/adobe/fre/FREObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    const-string v2, "[PushNotifyEx]"

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
