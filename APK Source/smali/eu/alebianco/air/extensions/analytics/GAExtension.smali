.class public Leu/alebianco/air/extensions/analytics/GAExtension;
.super Ljava/lang/Object;
.source "GAExtension.java"

# interfaces
.implements Lcom/adobe/fre/FREExtension;


# static fields
.field public static context:Leu/alebianco/air/extensions/analytics/GAContext;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createContext(Ljava/lang/String;)Lcom/adobe/fre/FREContext;
    .locals 1
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 22
    new-instance v0, Leu/alebianco/air/extensions/analytics/GAContext;

    invoke-direct {v0}, Leu/alebianco/air/extensions/analytics/GAContext;-><init>()V

    sput-object v0, Leu/alebianco/air/extensions/analytics/GAExtension;->context:Leu/alebianco/air/extensions/analytics/GAContext;

    .line 23
    sget-object v0, Leu/alebianco/air/extensions/analytics/GAExtension;->context:Leu/alebianco/air/extensions/analytics/GAContext;

    invoke-virtual {v0}, Leu/alebianco/air/extensions/analytics/GAContext;->initialize()V

    .line 24
    sget-object v0, Leu/alebianco/air/extensions/analytics/GAExtension;->context:Leu/alebianco/air/extensions/analytics/GAContext;

    return-object v0
.end method

.method public dispose()V
    .locals 1

    .prologue
    .line 29
    sget-object v0, Leu/alebianco/air/extensions/analytics/GAExtension;->context:Leu/alebianco/air/extensions/analytics/GAContext;

    invoke-virtual {v0}, Leu/alebianco/air/extensions/analytics/GAContext;->dispose()V

    .line 30
    const/4 v0, 0x0

    sput-object v0, Leu/alebianco/air/extensions/analytics/GAExtension;->context:Leu/alebianco/air/extensions/analytics/GAContext;

    .line 31
    return-void
.end method

.method public initialize()V
    .locals 0

    .prologue
    .line 35
    return-void
.end method
