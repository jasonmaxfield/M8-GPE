.class Lcom/android/settings/notification/ZenModeSettings$8;
.super Ljava/lang/Object;
.source "ZenModeSettings.java"

# interfaces
.implements Lcom/android/settings/notification/ZenModeSettings$TimePickerPreference$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/notification/ZenModeSettings;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/notification/ZenModeSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/notification/ZenModeSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/notification/ZenModeSettings$8;->this$0:Lcom/android/settings/notification/ZenModeSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSetTime(II)Z
    .locals 4
    .param p1    # I
    .param p2    # I

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/settings/notification/ZenModeSettings$8;->this$0:Lcom/android/settings/notification/ZenModeSettings;

    # getter for: Lcom/android/settings/notification/ZenModeSettings;->mDisableListeners:Z
    invoke-static {v3}, Lcom/android/settings/notification/ZenModeSettings;->access$000(Lcom/android/settings/notification/ZenModeSettings;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    invoke-static {p1}, Landroid/service/notification/ZenModeConfig;->isValidHour(I)Z

    move-result v3

    if-nez v3, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    invoke-static {p2}, Landroid/service/notification/ZenModeConfig;->isValidMinute(I)Z

    move-result v3

    if-nez v3, :cond_3

    move v1, v2

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/android/settings/notification/ZenModeSettings$8;->this$0:Lcom/android/settings/notification/ZenModeSettings;

    # getter for: Lcom/android/settings/notification/ZenModeSettings;->mConfig:Landroid/service/notification/ZenModeConfig;
    invoke-static {v2}, Lcom/android/settings/notification/ZenModeSettings;->access$100(Lcom/android/settings/notification/ZenModeSettings;)Landroid/service/notification/ZenModeConfig;

    move-result-object v2

    iget v2, v2, Landroid/service/notification/ZenModeConfig;->sleepStartHour:I

    if-ne p1, v2, :cond_4

    iget-object v2, p0, Lcom/android/settings/notification/ZenModeSettings$8;->this$0:Lcom/android/settings/notification/ZenModeSettings;

    # getter for: Lcom/android/settings/notification/ZenModeSettings;->mConfig:Landroid/service/notification/ZenModeConfig;
    invoke-static {v2}, Lcom/android/settings/notification/ZenModeSettings;->access$100(Lcom/android/settings/notification/ZenModeSettings;)Landroid/service/notification/ZenModeConfig;

    move-result-object v2

    iget v2, v2, Landroid/service/notification/ZenModeConfig;->sleepStartMinute:I

    if-eq p2, v2, :cond_0

    :cond_4
    const-string v1, "ZenModeSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onPrefChange sleepStart h="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " m="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/settings/notification/ZenModeSettings$8;->this$0:Lcom/android/settings/notification/ZenModeSettings;

    # getter for: Lcom/android/settings/notification/ZenModeSettings;->mConfig:Landroid/service/notification/ZenModeConfig;
    invoke-static {v1}, Lcom/android/settings/notification/ZenModeSettings;->access$100(Lcom/android/settings/notification/ZenModeSettings;)Landroid/service/notification/ZenModeConfig;

    move-result-object v1

    invoke-virtual {v1}, Landroid/service/notification/ZenModeConfig;->copy()Landroid/service/notification/ZenModeConfig;

    move-result-object v0

    iput p1, v0, Landroid/service/notification/ZenModeConfig;->sleepStartHour:I

    iput p2, v0, Landroid/service/notification/ZenModeConfig;->sleepStartMinute:I

    iget-object v1, p0, Lcom/android/settings/notification/ZenModeSettings$8;->this$0:Lcom/android/settings/notification/ZenModeSettings;

    # invokes: Lcom/android/settings/notification/ZenModeSettings;->setZenModeConfig(Landroid/service/notification/ZenModeConfig;)Z
    invoke-static {v1, v0}, Lcom/android/settings/notification/ZenModeSettings;->access$200(Lcom/android/settings/notification/ZenModeSettings;Landroid/service/notification/ZenModeConfig;)Z

    move-result v1

    goto :goto_0
.end method
