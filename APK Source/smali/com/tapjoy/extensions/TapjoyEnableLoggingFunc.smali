.class public Lcom/tapjoy/extensions/TapjoyEnableLoggingFunc;
.super Ljava/lang/Object;
.source "TapjoyEnableLoggingFunc.java"

# interfaces
.implements Lcom/adobe/fre/FREFunction;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/adobe/fre/FREContext;[Lcom/adobe/fre/FREObject;)Lcom/adobe/fre/FREObject;
    .locals 2
    .param p1, "arg0"    # Lcom/adobe/fre/FREContext;
    .param p2, "arg1"    # [Lcom/adobe/fre/FREObject;

    .prologue
    .line 14
    array-length v0, p2

    const/4 v1, 0x1

    if-lt v0, v1, :cond_0

    .line 16
    const/4 v0, 0x0

    aget-object v0, p2, v0

    invoke-static {v0}, Lcom/tapjoy/extensions/ExtensionUtils;->getBoolean(Lcom/adobe/fre/FREObject;)Z

    move-result v0

    invoke-static {v0}, Lcom/tapjoy/TapjoyLog;->enableLogging(Z)V

    .line 19
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method
