.class public Lcom/tapjoy/extensions/TapjoyGetDisplayAdHtmlStringFunc;
.super Ljava/lang/Object;
.source "TapjoyGetDisplayAdHtmlStringFunc.java"

# interfaces
.implements Lcom/adobe/fre/FREFunction;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/adobe/fre/FREContext;[Lcom/adobe/fre/FREObject;)Lcom/adobe/fre/FREObject;
    .locals 3
    .param p1, "arg0"    # Lcom/adobe/fre/FREContext;
    .param p2, "arg1"    # [Lcom/adobe/fre/FREObject;

    .prologue
    .line 16
    :try_start_0
    invoke-static {}, Lcom/tapjoy/TapjoyDisplayAd;->getHtmlString()Ljava/lang/String;

    move-result-object v1

    .line 18
    .local v1, "html":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 19
    invoke-static {v1}, Lcom/tapjoy/extensions/ExtensionUtils;->getFREObject(Ljava/lang/String;)Lcom/adobe/fre/FREObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 26
    .end local v1    # "html":Ljava/lang/String;
    :goto_0
    return-object v2

    .line 21
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 23
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 26
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method
