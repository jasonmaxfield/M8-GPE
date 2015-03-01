.class public Lcom/android/systemui/qs/tiles/FlashlightTile;
.super Lcom/android/systemui/qs/QSTile;
.source "FlashlightTile.java"

# interfaces
.implements Landroid/hardware/TorchManager$TorchCallback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/systemui/qs/QSTile",
        "<",
        "Lcom/android/systemui/qs/QSTile$BooleanState;",
        ">;",
        "Landroid/hardware/TorchManager$TorchCallback;"
    }
.end annotation


# instance fields
.field private mRecentlyOnTimeout:Ljava/lang/Runnable;

.field private final mTorchManager:Landroid/hardware/TorchManager;

.field private mWasLastOn:J


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/QSTile$Host;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/android/systemui/qs/QSTile;-><init>(Lcom/android/systemui/qs/QSTile$Host;)V

    new-instance v0, Lcom/android/systemui/qs/tiles/FlashlightTile$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/tiles/FlashlightTile$1;-><init>(Lcom/android/systemui/qs/tiles/FlashlightTile;)V

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/FlashlightTile;->mRecentlyOnTimeout:Ljava/lang/Runnable;

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/FlashlightTile;->mContext:Landroid/content/Context;

    const-string v1, "torch"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/TorchManager;

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/FlashlightTile;->mTorchManager:Landroid/hardware/TorchManager;

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/FlashlightTile;->mTorchManager:Landroid/hardware/TorchManager;

    invoke-virtual {v0, p0}, Landroid/hardware/TorchManager;->addListener(Landroid/hardware/TorchManager$TorchCallback;)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/qs/tiles/FlashlightTile;)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/FlashlightTile;->refreshState()V

    return-void
.end method


# virtual methods
.method protected composeChangeAnnouncement()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/FlashlightTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v0, Lcom/android/systemui/qs/QSTile$BooleanState;

    iget-boolean v0, v0, Lcom/android/systemui/qs/QSTile$BooleanState;->value:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/FlashlightTile;->mContext:Landroid/content/Context;

    const v1, 0x7f0b00b3

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/FlashlightTile;->mContext:Landroid/content/Context;

    const v1, 0x7f0b00b2

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method protected handleClick()V
    .locals 2

    invoke-static {}, Landroid/app/ActivityManager;->isUserAMonkey()Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/FlashlightTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v1, Lcom/android/systemui/qs/QSTile$BooleanState;

    iget-boolean v1, v1, Lcom/android/systemui/qs/QSTile$BooleanState;->value:Z

    if-nez v1, :cond_1

    const/4 v0, 0x1

    :goto_1
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/FlashlightTile;->mTorchManager:Landroid/hardware/TorchManager;

    invoke-virtual {v1, v0}, Landroid/hardware/TorchManager;->setTorchEnabled(Z)V

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/systemui/qs/tiles/FlashlightTile;->refreshState(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method protected handleDestroy()V
    .locals 1

    invoke-super {p0}, Lcom/android/systemui/qs/QSTile;->handleDestroy()V

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/FlashlightTile;->mTorchManager:Landroid/hardware/TorchManager;

    invoke-virtual {v0, p0}, Landroid/hardware/TorchManager;->removeListener(Landroid/hardware/TorchManager$TorchCallback;)V

    return-void
.end method

.method protected handleUpdateState(Lcom/android/systemui/qs/QSTile$BooleanState;Ljava/lang/Object;)V
    .locals 10

    const-wide/16 v8, 0x1f4

    const-wide/16 v6, 0x0

    iget-boolean v1, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->value:Z

    if-eqz v1, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/systemui/qs/tiles/FlashlightTile;->mWasLastOn:J

    :cond_0
    instance-of v1, p2, Ljava/lang/Boolean;

    if-eqz v1, :cond_1

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iput-boolean v1, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->value:Z

    :cond_1
    iget-boolean v1, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->value:Z

    if-nez v1, :cond_2

    iget-wide v2, p0, Lcom/android/systemui/qs/tiles/FlashlightTile;->mWasLastOn:J

    cmp-long v1, v2, v6

    if-eqz v1, :cond_2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/systemui/qs/tiles/FlashlightTile;->mWasLastOn:J

    add-long/2addr v4, v8

    cmp-long v1, v2, v4

    if-lez v1, :cond_4

    iput-wide v6, p0, Lcom/android/systemui/qs/tiles/FlashlightTile;->mWasLastOn:J

    :cond_2
    :goto_0
    iget-wide v2, p0, Lcom/android/systemui/qs/tiles/FlashlightTile;->mWasLastOn:J

    cmp-long v1, v2, v6

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/FlashlightTile;->mTorchManager:Landroid/hardware/TorchManager;

    invoke-virtual {v1}, Landroid/hardware/TorchManager;->isAvailable()Z

    move-result v1

    if-eqz v1, :cond_5

    :cond_3
    const/4 v1, 0x1

    :goto_1
    iput-boolean v1, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->visible:Z

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/FlashlightTile;->mHost:Lcom/android/systemui/qs/QSTile$Host;

    invoke-interface {v1}, Lcom/android/systemui/qs/QSTile$Host;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0b00fd

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->label:Ljava/lang/String;

    iget-boolean v1, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->value:Z

    if-eqz v1, :cond_6

    const v1, 0x7f02006e

    :goto_2
    iput v1, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->iconId:I

    iget-boolean v1, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->value:Z

    if-eqz v1, :cond_7

    const v0, 0x7f0b00b1

    :goto_3
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/FlashlightTile;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->contentDescription:Ljava/lang/String;

    return-void

    :cond_4
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/FlashlightTile;->mHandler:Lcom/android/systemui/qs/QSTile$H;

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/FlashlightTile;->mRecentlyOnTimeout:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Lcom/android/systemui/qs/QSTile$H;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/FlashlightTile;->mHandler:Lcom/android/systemui/qs/QSTile$H;

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/FlashlightTile;->mRecentlyOnTimeout:Ljava/lang/Runnable;

    iget-wide v4, p0, Lcom/android/systemui/qs/tiles/FlashlightTile;->mWasLastOn:J

    add-long/2addr v4, v8

    invoke-virtual {v1, v2, v4, v5}, Lcom/android/systemui/qs/QSTile$H;->postAtTime(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_5
    const/4 v1, 0x0

    goto :goto_1

    :cond_6
    const v1, 0x7f02006d

    goto :goto_2

    :cond_7
    const v0, 0x7f0b00b0

    goto :goto_3
.end method

.method protected bridge synthetic handleUpdateState(Lcom/android/systemui/qs/QSTile$State;Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/android/systemui/qs/QSTile$BooleanState;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/qs/tiles/FlashlightTile;->handleUpdateState(Lcom/android/systemui/qs/QSTile$BooleanState;Ljava/lang/Object;)V

    return-void
.end method

.method protected handleUserSwitch(I)V
    .locals 0

    return-void
.end method

.method protected newTileState()Lcom/android/systemui/qs/QSTile$BooleanState;
    .locals 1

    new-instance v0, Lcom/android/systemui/qs/QSTile$BooleanState;

    invoke-direct {v0}, Lcom/android/systemui/qs/QSTile$BooleanState;-><init>()V

    return-object v0
.end method

.method protected bridge synthetic newTileState()Lcom/android/systemui/qs/QSTile$State;
    .locals 1

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/FlashlightTile;->newTileState()Lcom/android/systemui/qs/QSTile$BooleanState;

    move-result-object v0

    return-object v0
.end method

.method public onTorchAvailabilityChanged(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/FlashlightTile;->mTorchManager:Landroid/hardware/TorchManager;

    invoke-virtual {v0}, Landroid/hardware/TorchManager;->isTorchOn()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/tiles/FlashlightTile;->refreshState(Ljava/lang/Object;)V

    return-void
.end method

.method public onTorchError()V
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/tiles/FlashlightTile;->refreshState(Ljava/lang/Object;)V

    return-void
.end method

.method public onTorchOff()V
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/tiles/FlashlightTile;->refreshState(Ljava/lang/Object;)V

    return-void
.end method

.method public setListening(Z)V
    .locals 0

    return-void
.end method
