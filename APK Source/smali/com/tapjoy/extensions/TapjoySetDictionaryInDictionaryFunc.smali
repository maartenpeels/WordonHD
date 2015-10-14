.class public Lcom/tapjoy/extensions/TapjoySetDictionaryInDictionaryFunc;
.super Ljava/lang/Object;
.source "TapjoySetDictionaryInDictionaryFunc.java"

# interfaces
.implements Lcom/adobe/fre/FREFunction;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/adobe/fre/FREContext;[Lcom/adobe/fre/FREObject;)Lcom/adobe/fre/FREObject;
    .locals 3
    .param p1, "arg0"    # Lcom/adobe/fre/FREContext;
    .param p2, "arg1"    # [Lcom/adobe/fre/FREObject;

    .prologue
    .line 13
    array-length v0, p2

    const/4 v1, 0x3

    if-lt v0, v1, :cond_0

    .line 15
    const/4 v0, 0x0

    aget-object v0, p2, v0

    invoke-static {v0}, Lcom/tapjoy/extensions/ExtensionUtils;->getString(Lcom/adobe/fre/FREObject;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    aget-object v1, p2, v1

    invoke-static {v1}, Lcom/tapjoy/extensions/ExtensionUtils;->getString(Lcom/adobe/fre/FREObject;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    aget-object v2, p2, v2

    invoke-static {v2}, Lcom/tapjoy/extensions/ExtensionUtils;->getString(Lcom/adobe/fre/FREObject;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/tapjoy/extensions/ExtensionUtils;->setDictionaryInDictionary(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method
