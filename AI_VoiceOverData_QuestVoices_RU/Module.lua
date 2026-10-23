if not VoiceOver or not VoiceOver.DataModules then return end
-- Русская озвучка: на клиенте с другой локалью модуль не регистрируется
if GetLocale() ~= "ruRU" then return end

AI_VoiceOverData_QuestVoices_RU = {}

function AI_VoiceOverData_QuestVoices_RU:GetSoundPath(fileName, event)
    setfenv(1, VoiceOver)
    if Enums.SoundEvent:IsQuestEvent(event) then
        return format([[generated\sounds\quests\%s.ogg]], fileName)
    end
end

VoiceOver.DataModules:Register("AI_VoiceOverData_QuestVoices_RU", AI_VoiceOverData_QuestVoices_RU)
