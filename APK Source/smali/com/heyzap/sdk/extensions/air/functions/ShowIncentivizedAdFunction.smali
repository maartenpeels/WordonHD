.class public Lcom/heyzap/sdk/extensions/air/functions/ShowIncentivizedAdFunction;
.super Ljava/lang/Object;
.source "ShowIncentivizedAdFunction.java"

# interfaces
.implements Lcom/adobe/fre/FREFunction;


# static fields
.field private static TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const-string v0, "ShowIncentivizedAdFunction"

    sput-object v0, Lcom/heyzap/sdk/extensions/air/functions/ShowIncentivizedAdFunction;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/adobe/fre/FREContext;[Lcom/adobe/fre/FREObject;)Lcom/adobe/fre/FREObject;
    .locals 3

    .prologue
    .line 23
    sget-object v0, Lcom/heyzap/sdk/extensions/air/functions/ShowIncentivizedAdFunction;->TAG:Ljava/lang/String;

    const-string v1, "call"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    if-eqz p2, :cond_0

    :try_start_0
    array-length v0, p2

    if-nez v0, :cond_1

    .line 27
    :cond_0
    invoke-virtual {p1}, Lcom/adobe/fre/FREContext;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/heyzap/sdk/ads/IncentivizedAd;->display(Landroid/app/Activity;)V

    .line 48
    :goto_0
    const/4 v0, 0x0

    return-object v0

    .line 29
    :cond_1
    const/4 v0, 0x0

    aget-object v0, p2, v0

    .line 30
    invoke-virtual {v0}, Lcom/adobe/fre/FREObject;->getAsString()Ljava/lang/String;

    move-result-object v0

    .line 31
    invoke-virtual {p1}, Lcom/adobe/fre/FREContext;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/heyzap/sdk/ads/IncentivizedAd;->display(Landroid/app/Activity;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 33
    :catch_0
    move-exception v0

    .line 34
    invoke-static {v0}, Lcom/heyzap/internal/Logger;->trace(Ljava/lang/Throwable;)V

    .line 35
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception caught: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/heyzap/sdk/extensions/air/HeyzapExtension;->log(Ljava/lang/String;)V

    .line 37
    new-instance v1, Ljava/io/StringWriter;

    invoke-direct {v1}, Ljava/io/StringWriter;-><init>()V

    .line 39
    new-instance v2, Ljava/io/PrintWriter;

    invoke-direct {v2, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 41
    invoke-virtual {v0, v2}, Ljava/lang/Exception;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 43
    invoke-virtual {v1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v0

    .line 45
    invoke-static {v0}, Lcom/heyzap/sdk/extensions/air/HeyzapExtension;->log(Ljava/lang/String;)V

    goto :goto_0
.end method
