.class public Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter$NetworkProperties;
.super Ljava/lang/Object;
.source "AdmobAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NetworkProperties"
.end annotation


# instance fields
.field public canonicalName:Ljava/lang/String;

.field public doesPerNetworkFetch:Z

.field public marketingName:Ljava/lang/String;

.field public marketingVersion:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
