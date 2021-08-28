function global_Messages(owner)
  messages = MakeLibrary()
  local message, list
  function messages.Add(_tag, _id, _timeout, _army, _sprite)
    message = {
      next = message,
      tag = _tag,
      id = _id,
      timeout = _timeout,
      eta = nil,
      army = _army,
      sprite = _sprite,
      stamp = 0
    }
  end
  function messages.Process()
    list = message
    while list do
      if list.stamp == 0 and list.eta and GetTime() > list.eta then
        PhoneMessage(list.id, constant.ID_NONE, list.army, list.timeout, list.sprite)
        list.stamp = GetTime()
      end
      list = list.next
    end
  end
  function messages.HasBeenPlayed(_tag)
    list = message
    while list do
      if _tag == list.tag then
        if list.stamp > 0 then
          return true
        else
          return false
        end
      end
      list = list.next
    end
    return false
  end
  function messages.HasBeenTriggered(_tag)
    list = message
    while list do
      if _tag == list.tag then
        if list.eta or list.stamp > 0 then
          return true
        else
          return false
        end
      end
      list = list.next
    end
    return false
  end
  function messages.HasFinishedPlaying(_tag)
    list = message
    while list do
      if _tag == list.tag then
        if list.stamp > 0 and GetTime() > list.stamp + list.timeout + 1 then
          return true
        else
          return false
        end
      end
      list = list.next
    end
    return false
  end
  function messages.Show(_tag, _eta)
    list = message
    while list do
      if _tag == list.tag then
        if _eta then
          list.eta = GetTime() + _eta
        else
          list.eta = GetTime()
        end
      end
      list = list.next
    end
  end
  function messages.SetRead(_tag)
    list = message
    while list do
      if _tag == list.tag then
        list.stamp = 1
      end
      list = list.next
    end
  end
  function messages.Summarise(_tag)
    list = message
    while list do
      if _tag == list.tag then
        list.stamp = 1
        StoreSummaryMessage(list.id, list.army, list.sprite)
      end
      list = list.next
    end
  end
end
