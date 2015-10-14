.class Lcom/heyzap/sdk/mediation/adapter/ApplovinAdapter$AdWrapper;
.super Lcom/heyzap/mediation/abstr/NetworkAdapter$AdDisplay;
.source "ApplovinAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/heyzap/sdk/mediation/adapter/ApplovinAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AdWrapper"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 239
    invoke-direct {p0}, Lcom/heyzap/mediation/abstr/NetworkAdapter$AdDisplay;-><init>()V

    .line 240
    return-void
.end method
