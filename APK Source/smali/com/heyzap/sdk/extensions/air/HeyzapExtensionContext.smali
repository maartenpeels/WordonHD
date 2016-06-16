.class public Lcom/heyzap/sdk/extensions/air/HeyzapExtensionContext;
.super Lcom/adobe/fre/FREContext;
.source "HeyzapExtensionContext.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/heyzap/sdk/extensions/air/HeyzapExtensionContext$Factory;
    }
.end annotation


# static fields
.field public static final AVAILABLE_FUNCTION_NAME:Ljava/lang/String; = "available"

.field public static final FETCH_FUNCTION_NAME:Ljava/lang/String; = "fetch"

.field public static final HIDE_FUNCTION_NAME:Ljava/lang/String; = "hide"

.field public static final SHOW_FUNCTION_NAME:Ljava/lang/String; = "show"

.field public static final TYPE:Ljava/lang/String; = "main"


# instance fields
.field private contextType:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/adobe/fre/FREContext;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/heyzap/sdk/extensions/air/HeyzapExtensionContext;->contextType:Ljava/lang/String;

    .line 25
    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 2

    .prologue
    .line 29
    sget-object v0, Lcom/heyzap/sdk/extensions/air/HeyzapExtension;->contexts:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    .line 30
    sget-object v0, Lcom/heyzap/sdk/extensions/air/HeyzapExtension;->contexts:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/heyzap/sdk/extensions/air/HeyzapExtensionContext;->contextType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    :cond_0
    return-void
.end method

.method public getFunctions()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/adobe/fre/FREFunction;",
            ">;"
        }
    .end annotation

    .prologue
    .line 36
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 37
    const-string v1, "start"

    new-instance v2, Lcom/heyzap/sdk/extensions/air/functions/StartAdsFunction;

    invoke-direct {v2}, Lcom/heyzap/sdk/extensions/air/functions/StartAdsFunction;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    const-string v1, "showMediationTestSuite"

    new-instance v2, Lcom/heyzap/sdk/extensions/air/functions/ShowMediationTestSuite;

    invoke-direct {v2}, Lcom/heyzap/sdk/extensions/air/functions/ShowMediationTestSuite;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    return-object v0
.end method
