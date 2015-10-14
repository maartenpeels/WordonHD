.class public Lcom/jirbo/airadc/AirADC;
.super Ljava/lang/Object;
.source "AirADC.java"

# interfaces
.implements Lcom/adobe/fre/FREExtension;


# static fields
.field private static final EXT_NAME:Ljava/lang/String; = "AirADC"


# instance fields
.field private context:Lcom/adobe/fre/FREContext;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createContext(Ljava/lang/String;)Lcom/adobe/fre/FREContext;
    .locals 2
    .param p1, "arg0"    # Ljava/lang/String;

    .prologue
    .line 17
    iget-object v0, p0, Lcom/jirbo/airadc/AirADC;->context:Lcom/adobe/fre/FREContext;

    if-nez v0, :cond_0

    new-instance v0, Lcom/jirbo/airadc/AirADCContext;

    const-string v1, "AirADC"

    invoke-direct {v0, v1}, Lcom/jirbo/airadc/AirADCContext;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/jirbo/airadc/AirADC;->context:Lcom/adobe/fre/FREContext;

    .line 18
    :cond_0
    iget-object v0, p0, Lcom/jirbo/airadc/AirADC;->context:Lcom/adobe/fre/FREContext;

    return-object v0
.end method

.method public dispose()V
    .locals 0

    .prologue
    .line 24
    return-void
.end method

.method public initialize()V
    .locals 0

    .prologue
    .line 28
    return-void
.end method
